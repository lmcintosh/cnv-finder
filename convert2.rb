#!/usr/bin/ruby
puts "Convert2 Starting Up..."

class ReadAndTransform
  #read .txt or .csv file from command line
  #transform file into internal string
  while geneString = ARGF.gets

  #creates new .txt file to be used later for output
  rawGenes = File.new( "rawGenes.txt","w")
  
  #transform string to array of individual genes
  genes = geneString.split(',')

  #prints array to output file with format Gene1/n/Gene2/n/ etc
  output_file = File.open('rawGenes.txt', 'w')
  genes.each do |line|
  output_file.puts line
  end

  puts genes
  
  numGenes = genes.size
  puts "#{numGenes} Genes"
  puts "Output file is rawGenes.txt"
  end
end


#end of program
$end