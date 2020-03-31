baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'FFICHeaderExtractor' with: [
				spec repository: 'github://marianopeck/FFICHeaderExtractor:9bc3957797a46a2d7ab213579c6c80737dc9db1d/repository' ];
			baseline: 'Unicode' with: [
				spec repository: 'github://feenkcom/pharo-unicode:85bb5a5f377e79712f38d1b6d68b28f329f4ef73/repository' ].
		spec 
			package: 'OSSubprocess' with: [
				spec requires: #('FFICHeaderExtractor' ). ];
			package: 'OSSubprocess-Tests-Unit' with: [
				spec requires: #('OSSubprocess' 'Unicode' ). ];
			package: 'OSSubprocess-Tests-Stress' with: [
				spec requires: #('OSSubprocess-Tests-Unit' ). ]. ].
