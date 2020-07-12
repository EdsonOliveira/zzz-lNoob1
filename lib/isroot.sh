# Edson | Verifica se é usuário Root
isRoot ()
{
    if [ "$(whoami)" = "root" ]; then
         return 0
    else
         return 1
    fi
    
}
