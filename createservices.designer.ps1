$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.Label]$Label3 = $null
[System.Windows.Forms.Label]$Label4 = $null
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.Label]$Label5 = $null
[System.Windows.Forms.CheckedListBox]$CheckedListBox1 = $null
[System.Windows.Forms.TextBox]$TextBox1 = $null
[System.Windows.Forms.TextBox]$TextBox2 = $null
[System.Windows.Forms.Button]$Button2 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'createservices.resources.ps1')
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$Label3 = (New-Object -TypeName System.Windows.Forms.Label)
$Label4 = (New-Object -TypeName System.Windows.Forms.Label)
$Button1 = (New-Object -TypeName System.Windows.Forms.Button)
$Label5 = (New-Object -TypeName System.Windows.Forms.Label)
$CheckedListBox1 = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$TextBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$TextBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Button2 = (New-Object -TypeName System.Windows.Forms.Button)
$Form1.SuspendLayout()
#
#Label1
#
$Label1.AccessibleRole = [System.Windows.Forms.AccessibleRole]::TitleBar
$Label1.BackColor = [System.Drawing.SystemColors]::AppWorkspace
$Label1.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$Label1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Lucida Fax',[System.Single]15.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]24))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]529,[System.Int32]35))
$Label1.TabIndex = [System.Int32]0
$Label1.Text = [System.String]'Menu de Criação de Serviços do Windows'
#
#Label2
#
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]107))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label2.TabIndex = [System.Int32]1
$Label2.Text = [System.String]'Nome:'
#
#Label3
#
$Label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]107))
$Label3.Name = [System.String]'Label3'
$Label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]23))
$Label3.TabIndex = [System.Int32]2
$Label3.Text = [System.String]'descrição(op):'
#
#Label4
#
$Label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]150))
$Label4.Name = [System.String]'Label4'
$Label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]124,[System.Int32]23))
$Label4.TabIndex = [System.Int32]3
$Label4.Text = [System.String]'Arquivo de execução:'
#
#Button1
#
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]406,[System.Int32]150))
$Button1.Name = [System.String]'Button1'
$Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Button1.TabIndex = [System.Int32]4
$Button1.Text = [System.String]'find'
$Button1.UseVisualStyleBackColor = $true
#
#Label5
#
$Label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]150))
$Label5.Name = [System.String]'Label5'
$Label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]116,[System.Int32]23))
$Label5.TabIndex = [System.Int32]5
$Label5.Text = [System.String]'Modo de execução:'
#
#CheckedListBox1
#
$CheckedListBox1.FormattingEnabled = $true
$CheckedListBox1.Items.AddRange([System.Object[]]@([System.String]'BOOT',[System.String]'SYSTEM',[System.String]'MANUAL'))
$CheckedListBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]186))
$CheckedListBox1.Name = [System.String]'CheckedListBox1'
$CheckedListBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]84))
$CheckedListBox1.TabIndex = [System.Int32]6
$CheckedListBox1.add_SelectedIndexChanged($CheckedListBox1_SelectedIndexChanged)
$CheckedListBox1.Capture = [System.Boolean]$true

#
#TextBox1
#
$TextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]67,[System.Int32]104))
$TextBox1.Name = [System.String]'TextBox1'
$TextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]186,[System.Int32]21))
$TextBox1.TabIndex = [System.Int32]7
#
#TextBox2
#
$TextBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]367,[System.Int32]104))
$TextBox2.Name = [System.String]'TextBox2'
$TextBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]174,[System.Int32]21))
$TextBox2.TabIndex = [System.Int32]8
#
#Button2
#
$Button2.AccessibleRole = [System.Windows.Forms.AccessibleRole]::ToolBar
$Button2.BackColor = [System.Drawing.SystemColors]::ButtonHighlight
$Button2.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]20.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]278,[System.Int32]199))
$Button2.Name = [System.String]'Button2'
$Button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]218,[System.Int32]62))
$Button2.TabIndex = [System.Int32]9
$Button2.Text = [System.String]'CRIAR'
$Button2.UseVisualStyleBackColor = $false
#
#Form1
#
$Form1.AccessibleRole = [System.Windows.Forms.AccessibleRole]::TitleBar
$Form1.BackColor = [System.Drawing.SystemColors]::ControlLight
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]564,[System.Int32]300))
$Form1.Controls.Add($Button2)
$Form1.Controls.Add($TextBox2)
$Form1.Controls.Add($TextBox1)
$Form1.Controls.Add($CheckedListBox1)
$Form1.Controls.Add($Label5)
$Form1.Controls.Add($Button1)
$Form1.Controls.Add($Label4)
$Form1.Controls.Add($Label3)
$Form1.Controls.Add($Label2)
$Form1.Controls.Add($Label1)
$Form1.Icon = ([System.Drawing.Icon]$resources.'$this.Icon')
$Form1.Text = [System.String]'MakeService'
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label3 -Value $Label3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label4 -Value $Label4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label5 -Value $Label5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckedListBox1 -Value $CheckedListBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox1 -Value $TextBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox2 -Value $TextBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button2 -Value $Button2 -MemberType NoteProperty
}
. InitializeComponent
