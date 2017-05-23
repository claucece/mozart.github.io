%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Assumptions:
%%
%%    Suppose that you installed LEDA at some directory, say:
%%        leda_install_dir
%%    and that the required environment variables are set:
%%        export LEDAROOT=leda_install_dir
%%        export LD_LIBRARY_PATH=$LEDA-ROOT
%%
%% Installation:
%% 
%%     You can install this package by calling ozmake
%%     with the following options: 
%%
%%        ozmake -I $LEDAROOT/incl -L $LEDAROOT --freshen
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

makefile(%%contibution
         provides:['solver.ozf'
                   'rclls-solver.ozf'
                  ]
         requires:['LEDA library']
   
         lib     :['solver.ozf'
                   'rclls-solver.ozf'
                   'solver.so'
                   'output.ozf'
                  ]

         depends : o('solver.o': ['redundancy.hh'
                                  'hypernormal_cycle_test.hh'
                                  'solver.hh'
                                  'solver.cc'
                                 ]
                    )
   
         rules   : o('solver.so': ld('solver.o' [library('L') library('G')])
		)

         %% documentation
         blurb   : 'graph based solver for the enumeration of all solved forms of a normal dominance constraints'
         doc     : ['makefile.oz']
   
         %% properties
         author  : ['mogul:/chorus/project']
         version : '0.0.2'
         uri     : 'x-ozlib://chorus/solver/km2'
         mogul   : 'mogul:/chorus/dominance-solver-km2'
        )








