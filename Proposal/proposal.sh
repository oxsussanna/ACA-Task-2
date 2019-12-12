./build/ARM/gem5.opt -d best/specbzip configs/example/se.py --cpu-type=MinorCPU --caches --l2cache  --l1d_size=32kB --l1d_assoc=2   --l1i_size=32kB --l1i_assoc=2  --l2_size=2MB --l2_assoc=2  --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/401.bzip2/src/specbzip -o "spec_cpu2006/401.bzip2/data/input.program 10" -I 100000000

./build/ARM/gem5.opt -d best/specmcf configs/example/se.py --cpu-type=MinorCPU --caches --l2cache  --l1d_size=32kB --l1d_assoc=2   --l1i_size=32kB --l1i_assoc=2  --l2_size=2MB --l2_assoc=2  --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d best/speclibm configs/example/se.py --cpu-type=MinorCPU --caches --l2cache  --l1d_size=32kB --l1d_assoc=2   --l1i_size=32kB --l1i_assoc=2  --l2_size=2MB --l2_assoc=2  --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

./build/ARM/gem5.opt -d best/specsjeng configs/example/se.py --cpu-type=MinorCPU --caches --l2cache  --l1d_size=32kB --l1d_assoc=2   --l1i_size=32kB --l1i_assoc=2  --l2_size=2MB --l2_assoc=2  --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

./build/ARM/gem5.opt -d best/spechmmer configs/example/se.py --cpu-type=MinorCPU --caches --l2cache  --l1d_size=32kB --l1d_assoc=2   --l1i_size=32kB --l1i_assoc=2  --l2_size=2MB --l2_assoc=2  --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 --seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 100000000
