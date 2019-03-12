function Initialize()
	Interval = SELF:GetNumberOption('Interval', 10)
	Random = SELF:GetNumberOption('Random', 0)

	Measures = {}
	for a in string.gmatch(SELF:GetOption('MeasureName',''), '[^%|]+') do
		table.insert(Measures, a)
	end

	SKIN:Bang('!SetOption')

	NextMeter=0
	

	
	SKIN:Bang('!CommandMeasure', Measures[1], 'Activate()')

	Counter = 0
end

function Update()
	Counter = (Counter + 1) % Interval
	if Counter == 0 then
				
		SKIN:Bang('!SetOption')
		reaper.atexit(exit)
		
	end
	return Interval - Counter
	
end
