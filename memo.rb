require "csv" # CSVファイルを扱うためのライブラリを読み込み
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換

while memo_type != 1 && memo_type != 2
    puts "1か2を入力してください"
    memo_type = gets.to_i
end

if memo_type == 1
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.strip
    puts "メモしたい内容を入力してください"
    puts "完了したらCtrl + Dを押します"
    input = readlines(chomp: true)
    file = CSV.open("#{file_name}.csv","w")
    file << input
    file.close
elsif memo_type == 2
    puts "編集したいファイル名を入力してください"
    file_over_write = gets.strip
    puts "メモしたい内容を入力してください"
    puts "完了したらCtrl + Dを押します"
    input = readlines(chomp: true)
    file = CSV.open("#{file_over_write}.csv","a")
    file << input
    file.close
end

