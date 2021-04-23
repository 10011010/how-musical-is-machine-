#melodies

define :melintro3 do
  sleep 32
  use_bpm 118
  use_synth :sine
  with_fx :flanger, mix: 0.5, amp: 0.75 do
    with_fx :slicer, mix: 0.95, wave: 1, probability: 0.7, seed: rando, smooth: 0.05, smooth_down: 0.09 do
      8. times do
        play_chord chord(:Bb3, 'm7', invert: 1), sustain: 1, release: 2, amp: 0.7
        play_chord chord(:Bb2, 'm7', invert: 1), sustain: 1, release: 1.5, amp: 0.2
        sleep 4
      end
    end
  end
end

define :melbuild3 do
  use_bpm 118
  in_thread do
    use_synth :sine
    with_fx :flanger, mix: 0.5, amp: 0.5 do
      with_fx :slicer, mix: 0.95, wave: 1, probability: 0.7, seed: rando, smooth: 0.05, smooth_down: 0.09 do
        8. times do
          play_chord chord(:Bb3, 'm7', invert: 1), sustain: 1, release: 2, amp: 0.7
          play_chord chord(:Bb2, 'm7', invert: 1), sustain: 1, release: 1.5, amp: 0.2
          sleep 4
        end
      end
    end
  end
  
  8. times do
    use_synth :hollow
    with_fx :ixi_techno, cutoff_min: 55, cutoff_max: 80, mix: 0.5 do
      play_chord chord(:Bb3, 'm7', invert: 1), sustain: 3, amp: 0.2
      sleep 4
    end
  end
  
end

define :fullmel3 do
  use_bpm 118
  in_thread do
    
    use_synth :sine
    with_fx :flanger, mix: 0.5, amp: 0.6 do
      with_fx :slicer, mix: 0.95, wave: 1, probability: 0.7, seed: rando, smooth: 0.05, smooth_down: 0.09 do
        10. times do
          play_chord chord(:Bb3, 'm7', invert: 1), sustain: 2.75, release: 1.5, amp: 0.7
          play_chord chord(:Bb2, 'm7', invert: 1), sustain: 2.75, release: 1, amp: 0.2
          sleep 4
          play_chord chord(:C4, 'm7', invert: 1), sustain: 2.75, release: 1.5, amp: 0.7
          play_chord chord(:C3, 'm7', invert: 1), sustain: 2.75, release: 1, amp: 0.2
          sleep 4
          play_chord chord(:Eb4, '6', invert: 1), sustain: 2.75, release: 1.5, amp: 0.7
          play_chord chord(:Eb3, '6', invert: 1), sustain: 2.75, release: 1, amp: 0.2
          sleep 4
          play chord(:Db4, '6', invert: 1), sustain: 2.75, release: 1.5,  amp: 0.7
          play chord(:Db3, '6', invert: 1), sustain: 2.75, release: 1, amp: 0.2
          sleep 4
        end
      end
    end
  end
  
  8. times do
    use_synth :hollow
    with_fx :ixi_techno, cutoff_min: 55, cutoff_max: 80, mix: 0.5 do
      play_chord chord(:Bb3, 'm7', invert: 1), sustain: 4, amp: 0.2
      
      sleep 4
      play_chord chord(:C4, 'm7', invert: 1), sustain: 4, amp: 0.2
      
      sleep 4
      play_chord chord(:Eb4, '6', invert: 1), sustain: 4, amp: 0.2
      
      sleep 4
      play chord(:Db4, '6', invert: 1), sustain: 4, amp: 0.2
      sleep 4
    end
  end
end


define :m2 do
  use_bpm 118
  sleep 32
  2. times do
    4. times do
      use_synth :beep
      use_bpm 118
      notes = scale(:Bb3, :minor, num_octaves: 1)
      rando 
      with_fx :echo, phase: 0.25, mix: 0.4, reps: 4 do
        sleep 0.1
        play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
        sleep 0.15
      end
      sleep 3
    end
    
    4. times do
      use_synth :beep
      use_bpm 118
      notes = scale(:C4, :minor, num_octaves: 1)
      rando 
      with_fx :echo, phase: 0.25, mix: 0.4, reps: 4 do
        sleep 0.1
        play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
        sleep 0.15
      end
      sleep 3
    end
  end
  
  3. times do
    4. times do
      use_synth :beep
      use_bpm 118
      notes = scale(:Bb3, :minor, num_octaves: 1)
      rando 
      with_fx :echo, phase: 0.25, mix: 0.4, reps: 16 do
        sleep 0.1
        play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
        sleep 0.15
      end
    end
    
    4. times do
      use_synth :beep
      use_bpm 118
      notes = scale(:C4, :minor, num_octaves: 1)
      rando 
      with_fx :echo, phase: 0.25, mix: 0.4, reps: 16 do
        sleep 0.1
        play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
        sleep 0.15
      end
    end
  end
  
  1. times do
    4. times do
      use_synth :beep
      use_bpm 118
      notes = scale(:C4, :minor, num_octaves: 2)
      rando 
      with_fx :echo, phase: 0.25, mix: 0.2, reps: 16 do
        sleep 0.1
        play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: -0.25).tick, amp: rrand(0.2, 0.8)
        sleep 0.15
      end
    end
    
  end
  
  
  4. times do
    use_synth :beep
    use_bpm 118
    notes = scale(:Bb3, :minor, num_octaves: 1)
    rando 
    with_fx :echo, phase: 0.25, mix: 0.4, reps: 16 do
      sleep 0.1
      play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
      sleep 0.15
    end
  end
  
  4. times do
    use_synth :beep
    use_bpm 118
    notes = scale(:C4, :minor, num_octaves: 1)
    rando
    with_fx :echo, phase: 0.25, mix: 0.4, reps: 16 do
      sleep 0.1
      play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
      sleep 0.15
    end
  end
  
  
  4. times do
    use_synth :beep
    use_bpm 118
    notes = scale(:C4, :minor, num_octaves: 2)
    rando 
    with_fx :echo, phase: 0.25, mix: 0.2, reps: 16 do
      sleep 0.1
      play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: -0.25).tick, amp: rrand(0.2, 0.8)
      sleep 0.15
    end
  end
  
  
  4. times do
    use_synth :beep
    use_bpm 118
    notes = scale(:Bb3, :minor, num_octaves: 1)
    rando 
    with_fx :echo, phase: 0.25, mix: 0.4, reps: 16 do
      sleep 0.1
      play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
      sleep 0.15
    end
  end
  
  4. times do
    use_synth :beep
    use_bpm 118
    notes = scale(:C4, :minor, num_octaves: 1)
    rando 
    with_fx :echo, phase: 0.25, mix: 0.4, reps: 16 do
      sleep 0.1
      play notes.choose, attack: 0.1, release: 0.1, pan: (range -1, 1, step: 0.25).tick, amp: rrand(0.2, 0.8)
      sleep 0.15
    end
  end
  stop
end


