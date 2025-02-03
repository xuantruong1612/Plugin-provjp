" Cấu hình toggleterm.nvim
lua << EOF
  require("toggleterm").setup{
    -- Tùy chỉnh các cài đặt ở đây
    size = 20,           -- Kích thước của terminal (số dòng)
    open_mapping = [[<c-\>]],  -- Phím tắt để mở terminal
    hide_numbers = true,     -- Ẩn số dòng khi mở terminal
    shade_filetypes = {},    -- Loại file không muốn có shading
    shade_terminals = true,  -- Bật shading terminal
    shading_factor = 2,      -- Mức độ shading
    start_in_insert = true,  -- Bắt đầu ở chế độ insert khi mở terminal
    insert_mappings = true,  -- Cho phép sử dụng phím tắt khi ở chế độ insert
    persist_mode = true,     -- Giữ lại trạng thái khi đóng và mở lại terminal
    direction = 'horizontal',  -- Chế độ hiển thị terminal: 'horizontal', 'vertical', 'float'
  }
EOF
