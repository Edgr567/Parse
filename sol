import argparse
pars = argparse.ArgumentParser()

pars.add_argument(nargs="+", dest='str_param',help='a string parameter')
pars.add_argument('--report')
args = pars.parse_args().str_param
dicc = {}
for x in range(len(args)):
    with open(args[x],"r") as ccv:
        for line_number, line in enumerate(ccv, 1):  # start from line 1
            if(line_number >1 ):
                dicc[line.split(",")[2]] = dicc.get(line.split(",")[2],0) +int(line.split(",")[5])*int(line.split(",")[4])

print(dicc)
