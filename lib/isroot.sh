# Edson | Verifica se é usuário Root
# none -> 0=yes 1=no
isRoot ()
{
    if [ "$(whoami)" = "root" ]; then
         return 0
    else
         return 1
    fi
    
}
