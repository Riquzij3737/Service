function List-Services {
    Clear-Host
    $num = 0

    $services = Get-Service | Where-Object { $_.Status -eq 'Running' } | ForEach-Object { $_.Name }
    $stopservices = Get-Service | Where-Object { $_.Status -eq 'Stopped' } | ForEach-Object { $_.Name }

    Write-Host "==============================================="
    Write-Host "      Lista de Serviços do Windows"
    Write-Host "===============================================`n"

    Write-Host "Serviços em execução:`n"
    foreach ($service in $services) {
        $num++
        Write-Host "$num) $service"
    }

    Write-Host "`nServiços Parados:`n"
    $num = 0
    foreach ($names in $stopservices) {
        $num++
        Write-Host "$num) $names"
    }

    Write-Host "`n==============================================="
    Write-Host "   O que desejas fazer:"
    Write-Host "==============================================="
    Write-Host "= 1) Parar um serviço                        ="
    Write-Host "= 2) Iniciar um serviço                      ="
    Write-Host "= 3) Criar um serviço                        ="
    Write-Host "= 4) Reiniciar um serviço                    ="
    Write-Host "= 5) Sair                                    ="
    Write-Host "==============================================="

    $keypadnum = read-host 

    switch ($keypadnum) {
        1  {
            $name = Read-Host "Insira o nome do serviço que deseja parar"

            if (Get-Service -Name $name -ErrorAction SilentlyContinue) {
                if ((Get-Service -Name $name).Status -eq 'Stopped') {
                    Write-Host "Atenção: Este serviço já está parado."
                } else {
                    try {
                        Stop-Service -Name $name -Force
                        Write-Host "O serviço '$name' foi parado com sucesso."
                    } catch {
                        Write-Error "Erro: Não foi possível parar o serviço '$name'. Verifique se você tem permissões administrativas ou se o serviço é crítico para o sistema."
                    }
                }
            } else {
                Write-Error "Erro: Serviço '$name' não encontrado."
            }
        }

        2  {
            $name = Read-Host "Digite o nome do serviço que deseja iniciar"

            if (Get-Service -Name $name -ErrorAction SilentlyContinue) {
                if ((Get-Service -Name $name).Status -eq 'Running') {
                    Write-Host "Atenção: O serviço '$name' já está em execução."
                } else {
                    try {
                        Start-Service -Name $name
                        Write-Host "O serviço '$name' foi iniciado com sucesso."
                    } catch {
                        Write-Error "Erro: Não foi possível iniciar o serviço '$name'. Verifique as permissões ou se o serviço está configurado corretamente."
                    }
                }
            } else {
                Write-Error "Erro: Serviço '$name' não encontrado."
            }
        }

        3 {
            . (join-path  $PSScriptRoot "CreateServices.ps1")
        }

        4 {
            $name = Read-Host "Digite o nome do serviço que deseja reiniciar"

            if (Get-Service -Name $name -ErrorAction SilentlyContinue) {
                try {
                    Restart-Service -Name $name
                    Write-Host "O serviço '$name' foi reiniciado com sucesso."
                } catch {
                    Write-Error "Erro: Não foi possível reiniciar o serviço '$name'."
                }
            } else {
                Write-Error "Erro: Serviço '$name' não encontrado."
            }
        }

        5 {
            Write-Host "Saindo... Até logo!"
            exit
        }

        Default {
            Write-Host "Opção inválida. Tente novamente."
        }
    }

    # Após realizar uma ação, o menu será exibido novamente.
    Write-Host "`nPressione qualquer tecla para continuar..."
    [System.Console]::ReadKey($true) > $null
    List-Services
}

List-Services
