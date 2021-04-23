
define :double_bass do
  use_synth :pluck
  with_fx :reverb, room: 0.95, amp: 1.4 do
    use_bpm 59
    use_random_seed 11
    
    play :Bb1, pluck_decay: 22, noise_amp: 0.15, amp: 2, coef: 0.8
    sleep 0.77
    play chord(:Bb1, 'm7').choose, pluck_decay: 22, noise_amp: 0.15, amp: 2, coef: 0.8
    sleep 0.5
    play chord(:Bb1, 'm7').choose, pluck_decay: 22, noise_amp: 0.15, amp: 2, coef: 0.8
    sleep 0.73
    7. times do
      play chord(:Bb1, 'm7').choose, pluck_decay: 22, noise_amp: 0.15, amp: 2, coef: 0.8
      sleep 0.77
      play chord(:Bb1, 'm7').choose, pluck_decay: 22, noise_amp: 0.15, amp: 2, coef: 0.8
      sleep 0.5
      play chord(:Bb1, 'm7').choose, pluck_decay: 22, noise_amp: 0.15, amp: 2, coef: 0.8
      sleep 0.73
    end
  end
  
  
end

define :intro_up_chords do
  2. times do
    use_synth :piano
    with_fx :reverb, room: 0.8 do
      play :Bb3
      play_chord chord(:Bb3, 'm7', invert: 1), sustain: 5
      sleep 0.6
      play_chord chord(:Bb3, 'm7', invert: 1), sustain: 4
      sleep 0.95
      play :C4, amp: 0.5
      play_chord chord(:C4, 'm7', invert: 1), sustain: 6
      sleep 1.7
      sleep 0.75
      sleep 4
    end
  end
end

define :up_chords do
  use_synth :piano
  use_bpm 118
  with_fx :reverb, room: 0.75 do
    play :Bb3, amp: 0.5
    play_chord chord(:Bb3, 'm7', invert: 1), sustain: 4, amp: 0.75
    sleep 0.6
    play_chord chord(:Bb3, 'm7', invert: 1), sustain: 4, amp: 0.75
    sleep 0.9
    play :C4, amp: 0.2
    play_chord chord(:C4, 'm7', invert: 1), sustain: 2, amp: 0.2
    play chord(:C4, 'm7').choose, sustain: 2, amp: 0.5, amp: 0.5
    sleep 0.25
    play chord(:C4, 'm7').choose, sustain: 2, amp: 0.5, amp: 0.5
    sleep 0.25
    play chord(:C4, 'm7').choose, sustain: 2, amp: 0.5, amp: 0.5
    sleep 0.25
    play chord(:C4, 'm7').choose, sustain: 2, amp: 0.5, amp: 0.5
    sleep 0.25
    play chord(:C4, 'm7').choose, sustain: 2, amp: 0.5, amp: 0.5
    sleep 0.5
    play :Bb4, sustain: 2, amp: 0.5
    sleep 1
    
    play :Eb4, amp: 0.5
    play_chord chord(:Eb4, '6', invert: 1), sustain: 4, amp: 0.75
    sleep 0.6
    play_chord chord(:Eb4, '6', invert: 1), sustain: 4, amp: 0.75
    sleep 0.9
    play :Db4, amp: 0.2
    play_chord chord(:Db4, '6', invert: 1), sustain: 4, amp: 0.2
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.25
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.25
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.25
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.25
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.5
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.5
    play chord(:Db4, '6', invert: 1).choose, sustain: 2, amp: 0.5
    sleep 0.5
  end
end

define :build_intro_up1 do
  with_fx :lpf, cutoff: 60, amp: 1.5, res: 0.25,  cutoff_slide: 16 do |e|
    control e, cutoff: 70
    intro_up_chords
    control e, cutoff: 65
    intro_up_chords
  end
end

define :build_intro_up2 do
  with_fx :lpf, cutoff: 65, amp: 1.5, res: 0.25,  cutoff_slide: 16 do |e|
    control e, cutoff: 75
    intro_up_chords
    control e, cutoff: 70
    intro_up_chords
  end
end

define :build_up_piano do
  with_fx :lpf, cutoff: 75, amp: 1.5, res: 0.25, cutoff_slide: 16 do |e|
    2. times do
      control e, cutoff: 85
      up_chords
      control e, cutoff: 80
      up_chords
    end
    
  end
end

define :high_up_chords do
  with_fx :lpf, cutoff: 100, amp: 0.75, res: 0.25, cutoff_slide: 8 do |e|
    with_fx :reverb, room: 0.25 do
      2. times do
        up_chords
        up_chords
      end
      
    end
  end
end

define :bflatshort do
  
  with_fx :reverb, room: 0.9 do
    with_fx :echo, mix: 0.25 do
      
      play chord(:Bb4, 'm7').choose, release: 0.3, amp: 0.5, attack: 0.01
      sleep 0.5
      play chord(:Bb4, 'm7').choose, release: 0.3, amp: 0.5, attack: 0.01
      sleep 0.25
      play chord(:Bb4, 'm7').choose, release: 0.3, amp: 0.5, attack: 0.01
      sleep 0.5
      play chord(:Bb4, 'm7').choose, release: 0.3, amp: 0.5, attack: 0.01
      sleep 0.25
      play chord(:Bb4, 'm7').choose, release: 0.3, amp: 0.5, attack: 0.01
      sleep 0.25
      play chord(:Bb4, 'm7').choose, release: 0.3, amp: 0.5, attack: 0.01
      sleep 0.25
      sleep 6
    end
  end
end

define :bflatshort2 do
  with_fx :reverb, room: 0.7 do
    play chord(:Bb2, 'm7').choose, release: 0.5, amp: 0.5, attack: 0.01
    sleep 0.75
    play chord(:Bb2, 'm7').choose, release: 0.5, amp: 0.5, attack: 0.01
    sleep 0.5
    play chord(:Bb2, 'm7').choose, release: 0.5, amp: 0.5, attack: 0.01
    sleep 0.25
    play chord(:Bb2, 'm7').choose, release: 0.5, amp: 0.5, attack: 0.01
    sleep 0.25
    play chord(:Bb2, 'm7').choose, release: 0.5, amp: 0.5, attack: 0.01
    sleep 0.25
    sleep 6
  end
end

define :randrums do
  use_bpm 118
  in_thread do
    4. times do
      sample :bd_haus, cutoff: 90, amp: 0.35
      sleep 1
      sample :bd_haus, cutoff: 90, amp: 0.35
      sleep 1
      sample :bd_haus, cutoff: 90, amp: 0.35
      sleep 1
      sample :bd_haus, cutoff: 90, amp: 0.35
      sleep 1
    end
  end
  
  
  4. times do
    use_bpm 118
    sleep 2
    8. times do
      sample :bd_haus, amp: 0.25, cutoff: 90 if rand < 0.5
      sleep 0.25
    end
  end
  
end

define :randrums_w_snare do
  use_bpm 118
  in_thread do
    2. times do
      randrums
    end
  end
  
  8. times do
    with_fx :reverb, room: 0.1 do
      sleep 1
      sample :elec_mid_snare, amp: 0.25
      sleep 2
      sample :elec_mid_snare, amp: 0.25
      sleep 1
    end
  end
end

define :randpercs do
  use_bpm 118
  in_thread do
    16. times do
      8. times do
        sample :drum_cymbal_closed, amp: 0.2, finish: rrand(0.2, 0.4), cutoff: 130 if rand < 0.3
        sleep 0.25
      end
    end
  end
  
  in_thread do
    16. times do
      sleep 0.5
      sample :drum_cymbal_closed, amp: 0.4
      sleep 1
      sample :drum_cymbal_closed, amp: 0.4
      sleep 0.5
    end
  end
  
  8. times do
    with_fx :reverb, room: 0.1 do
      sleep 1
      sample :elec_mid_snare, amp: 0.25
      sleep 2
      sample :elec_mid_snare, amp: 0.25
      sleep 1
    end
  end
end





