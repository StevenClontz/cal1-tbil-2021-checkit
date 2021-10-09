def generator():
    x=var("x")
    
    random_scenario = choice(["bucket", "well", "dam"])
    
    mass(x)=0
    radius=0
    base1=0
    base2=0

    if random_scenario == "bucket":
        height=randint(4,10)*5
        mass(x)=randint(10,20)+randint(5,10)*e^(x/randint(4,10))
        work(x)=mass(x)
    
    if random_scenario == "well":
        height=randint(4,10)*5
        radius=randint(2,5)
        work(x)=pi*radius^2*x
    
    if random_scenario == "dam":
        height=randint(10,30)*5
        base1=randint(20,30)*5
        base2=randint(10,19)*5
        work(x)=(base2+(base1-base2)*(1-x/height))*(x)

    return {
      "height": height,
      "workx": work(x),
      "massx": mass(x),
      "radius": radius,
      "base1": base1,
      "base2": base2,
      "scenario":  {random_scenario: True},  
        
    }
