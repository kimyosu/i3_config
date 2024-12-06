" ======================== Plugins ================================
call plug#begin()                  " Inicia o bloco de plugins
Plug 'shaunsingh/nord.nvim'        " Tema Nord
Plug 'dense-analysis/ale'          " Linter e fixer
Plug 'Jezda1337/nvim-html-css'
Plug 'vim-airline/vim-airline'     " Status bar avançada
Plug 'ryanoasis/vim-devicons'      " Ícones para arquivos
Plug 'vim-airline/vim-airline-themes' " Temas para o vim-airline
Plug 'preservim/nerdtree'          " Gerenciador de arquivos
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Destaque para NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin' " Integração Git com NERDTree
call plug#end()                    " Finaliza o bloco de plugins

" ===================== Configurações Globais ======================
" Habilitação de recursos básicos
syntax on            " Habilitar destaque de sintaxe
set nu               " Exibir números nas linhas

" Configurações de tabulação e indentação
set tabstop=4        " Exibir tabulação como 4 espaços
set softtabstop=4    " Tabulação suave como 4 espaços
set shiftwidth=4     " Tamanho da indentação ao usar '>'
set expandtab        " Converter TAB em espaços
set smarttab         " Indentar no início da linha com base no shiftwidth
set smartindent      " Inserir automaticamente níveis extras de indentação

" Comportamento do buffer e busca
set hidden           " Permite esconder o buffer atual ao abrir outro arquivo
set incsearch        " Busca incremental
set ignorecase       " Ignorar letras maiúsculas na busca
set smartcase        " Diferenciar maiúsculas se o termo contiver uma

" Configurações visuais
set scrolloff=8      " Manter pelo menos 8 linhas acima/abaixo do cursor
set colorcolumn=100  " Linhas de limite de 100 caracteres
set signcolumn=yes   " Coluna para exibição de ícones e avisos

" Diversas otimizações
set cmdheight=2      " Altura extra para mensagens no comando
set updatetime=100   " Reduz tempo de espera para 100ms
set encoding=utf-8   " Configurar codificação para UTF-8
set nobackup         " Desabilitar backups
set nowritebackup    " Desabilitar backups adicionais
set splitright       " Dividir janelas verticais para a direita
set splitbelow       " Dividir janelas horizontais para baixo
set autoread         " Recarregar arquivos automaticamente ao serem modificados externamente

" Configurações de tipo de arquivo
filetype on          " Detectar tipo de arquivo
filetype plugin on   " Ativar plugins específicos para tipos de arquivo
filetype indent on   " Ativar indentação específica para tipos de arquivo

" ======================= Atalhos ============================
" Navegação rápida entre divisões
map <C-h> <C-w>h     " Ir para a divisão à esquerda
map <C-j> <C-w>j     " Ir para a divisão abaixo
map <C-k> <C-w>k     " Ir para a divisão acima
map <C-l> <C-w>l     " Ir para a divisão à direita

" ======================= Temas ==============================
" Configuração do tema Nord
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_enable_italic = v:false
let g:nord_disable_italic_comment = v:true
let g:nord_italic = v:true
let g:nord_uniform_diff_background = v:true
let g:nord_bold = v:false
colorscheme nord     " Carregar o tema Nord

" ===================== NERDTree ============================
" Atalho para abrir/fechar o NERDTree
nmap <C-a> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" ========================= ALE =============================
" Configuração do ALE para linting e fixes
let g:ale_linters = {
\}

let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\}

let g:ale_fix_on_save = 1
