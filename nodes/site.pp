# Example of site.pp file with two nodes and default parameters
node 'puppetagent01.example.com', 'puppetagent02.example.com'{
  include ntpdemo
}

node 'default'{
  
}
