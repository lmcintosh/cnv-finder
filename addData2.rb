#!/usr/bin/ruby
puts "addData2 Starting Up..."

class AddData
  
  #read .txt or .csv file from command line
  #transform file into internal string
  while geneList = ARGF.gets

  #creates new .txt file to be used later for output
  genesWithData = File.new( "genesWithData.txt","w")
    
  #sort genes in preparation for searchAddData
  #def sortNum
  #error: is undefined method `%' for nil:NilClass (NoMethodError)
  #error: undefined local variable or method `gene' for AddData:Class (NameError)
     geneList.sort
        
     i = 0
     while i < geneList.size
     puts i
     s = "gene1"
     s[-1..-1] = i
     puts s
     gene%i = geneList[i]
     puts gene%i
     i += 1
     end
   
   #return geneList
     

  
  
      
  #def initialize(data)
  #  puts "setting genomic variation data filename=",data   
  #  @data = data 
  #end  
     
  #def printGenes  
  #  output_file = File.open('genesWithData.txt', 'w')
    #reads gene data
  #  @genes = File.read(@data)  
  #  puts @genes.inspect
  #  #writes the gene name only to output
  #  genes.each do |line|
  #  output_file.puts line
  #  end
  #end  
    
  #def printGenesAndGainLoss  
  #  gain = @genes.find_all do |r|  
  #    r[2] >= 0 
  #    genes.each do |r|
  #      output_file.puts r[2]
  #      end
  #  end 
  #  loss = @genes.find_all do |r|
  #    r[3] >= 0
  #    genes.each do |r|
  #      output_file.puts r[3]
  #      end
  #  end
    
  # puts "Following genes were amplified:"  
  # gain.each {|m| puts m[0]}
  # puts "Following genes were deleted:"
  # loss.each {|m| puts m[0]}
 #end
 end
 
 
 #c1 = AddData.new("genesWithData.txt")  
     
#  def addSampleResult  
#    @genes << ["Gene","Gain","Loss"]  
#    CSV.open(@filename, 'w') do |csv|  
#      @genes.each do |genes|  
#        csv << genes  
#      end  
#   end    
end