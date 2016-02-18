defmodule Viktor.Cli do

def main(arg) do
arg
|>parse_args
|>process
end

def parse_args(args) do
   parse = OptionParser.parse(args, switches:
   [help: :boolean],
    aliases: [h: :help]
     );

     case parse do
       {[help: true],_,_} -> :help
       {}
     end
end

def process(:help) do
  IO.puts """
   put some help txt here fool
  """
  System.halt(0)
end


end
