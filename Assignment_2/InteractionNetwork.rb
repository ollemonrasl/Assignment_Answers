require "rest-client"
require "./Gene.rb"
require "./Network.rb"

file_names = ARGV[0]

gene_file = File.open(file_names)
gene_lines = gene_file.readlines()

for a in 0..gene_lines.length do
  gene_id = gene_lines[a].split("\n")[0]
  Gene.gene_info(gene_id)
end

Network.interactome