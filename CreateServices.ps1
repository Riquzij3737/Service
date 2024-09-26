# Carrega a biblioteca Windows Forms
Add-Type -AssemblyName System.Windows.Forms

# Carrega o design do formulário
. (Join-Path $PSScriptRoot 'createservices.designer.ps1')

# Inicializa a variável $arq
$arq = $null

# Evento do botão Find
$Button1.add_click({
    $file = New-Object System.Windows.Forms.SaveFileDialog
    $file.Filter = "Todos os tipos de arquivos|*.*"
    $result = $file.ShowDialog()

    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        # Armazena o caminho do arquivo selecionado
        $arq = $file.FileName
    }
})

# Evento do botão Create Service
$Button2.add_click({
    # Obtém os valores dos campos de texto
    $name = $TextBox1.Text
    $desc = $TextBox2.Text

    # Verifica se o nome e o arquivo foram preenchidos
    if ([string]::IsNullOrEmpty($name) -or [string]::IsNullOrEmpty($arq)) {
        [System.Windows.Forms.MessageBox]::Show("Nenhum nome inserido ou arquivo escolhido")
    } else {
        # Verifica o campo de descrição e a seleção da CheckedListBox
        if ([string]::IsNullOrEmpty($desc)) {
            switch ($CheckedListBox1.SelectedItem) {
                'SYSTEM' {
                    New-Service -Name $name -BinaryPathName $arq -StartupType Automatic
                    [System.Windows.Forms.MessageBox]::Show("Serviço '$name' criado com sucesso (SYSTEM).")
                }
                'BOOT' {
                    New-Service -Name $name -BinaryPathName $arq -StartupType Automatic
                    [System.Windows.Forms.MessageBox]::Show("Serviço '$name' criado com sucesso (BOOT).")
                }
                'MANUAL' {
                    New-Service -Name $name -BinaryPathName $arq -StartupType Manual
                    [System.Windows.Forms.MessageBox]::Show("Serviço '$name' criado com sucesso (MANUAL).")
                }
                Default {
                    [System.Windows.Forms.MessageBox]::Show("Tipo de serviço não selecionado.")
                }
            }
        } else {
            switch ($CheckedListBox1.SelectedItem) {
                'SYSTEM' {
                    New-Service -Name $name -BinaryPathName $arq -StartupType Automatic -Description $desc
                    [System.Windows.Forms.MessageBox]::Show("Serviço '$name' com descrição '$desc' criado com sucesso (SYSTEM).")
                }
                'BOOT' {
                    New-Service -Name $name -BinaryPathName $arq -StartupType Automatic -Description $desc
                    [System.Windows.Forms.MessageBox]::Show("Serviço '$name' com descrição '$desc' criado com sucesso (BOOT).")
                }
                'MANUAL' {
                    New-Service -Name $name -BinaryPathName $arq -StartupType Manual -Description $desc
                    [System.Windows.Forms.MessageBox]::Show("Serviço '$name' com descrição '$desc' criado com sucesso (MANUAL).")
                }
                Default {
                    [System.Windows.Forms.MessageBox]::Show("Tipo de serviço não selecionado.")
                }
            }
        }
    }
})

# Mostra o formulário
$Form1.ShowDialog()
