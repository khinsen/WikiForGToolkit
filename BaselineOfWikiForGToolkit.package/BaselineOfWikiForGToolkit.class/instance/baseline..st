baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'WikiForGToolkit' ] ]

	spec for: #'non-gtoolkit' do: [
		spec
			baseline: 'GToolkit' with: [ spec repository: 'github://feenkcom/gtoolkit:release/src' ].
		spec
			package: 'WikiForGToolkit' with: [ spec requires: #('GToolkit')] ]
