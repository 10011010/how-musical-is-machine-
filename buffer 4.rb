
use_bpm 118




define :chop_intro do
  with_fx :lpf, cutoff: 25, amp: 2, res: 0.25,  cutoff_slide: 16 do |e|
    control e, cutoff: 30
    cut_chords
    control e, cutoff: 50
    cut_chords
  end
end

define :chop_intro2 do
  with_fx :lpf, cutoff: 50, amp: 0.65, res: 0.25, cutoff_slide: 16 do |e|
    control e, cutoff: 65
    cut_chords
    control e, cutoff: 55
    cut_chords
  end
end

define :cut_chords do
  use_synth :piano
  with_fx :reverb do
    use_bpm 118
    4. times do
      play :Bb2, sustain: 2
      sleep 0.25
      play_pattern_timed chord(:Bb2, 'm7', invert: 1), 0.1, sustain: 2, amp: 0.75
      sleep 3.05
      play (chord :C3, 'm7', invert: 1), amp: 2, sustain: 0.25
      sleep 0.3
    end
  end
end

define :chordss do
  use_synth :piano
  use_bpm 118
  with_fx :reverb, room: 0.75 do
    play :Bb2
    sleep 0.25
    play_pattern_timed chord(:Bb2, 'm7', invert: 1), 0.1, sustain: 3
    sleep 1.85
    play_pattern_timed chord(:Db3, :M), 0.5, sustain: 2
    play :C3
    sleep 0.25
    play_pattern_timed chord(:C3, 'm7', invert: 1), 0.1, sustain: 3
    sleep 1.85
    play :Bb3, sustain: 2
    sleep 0.5
    play :C4, sustain: 2
    sleep 1
    play :Eb3
    sleep 0.25
    play_pattern_timed chord(:Eb3, '6', invert: 1), 0.1, sustain: 3
    sleep 1.85
    play :C4, sustain: 1, sustain: 2
    sleep 0.5
    play :C4, sustain: 1, sustain: 2
    sleep 0.5
    play :Bb3, sustain: 1, sustain: 2
    sleep 0.5
    play :Db3
    sleep 0.25
    play_pattern_timed chord(:Db3, '6', invert: 1), 0.1, sustain: 3
    sleep 1.85
    play_pattern_timed chord(:Db3, '6', invert: 1).reverse.drop(1), 0.5, sustain: 2
  end
end


define :build_intro2 do
  with_fx :lpf, cutoff: 60, amp: 0.65, res: 0.25, cutoff_slide: 16 do |e|
    
    control e, cutoff: 70
    chordss
    control e, cutoff: 55
    chordss
  end
end

define :high_chords do
  with_fx :lpf, cutoff: 120, amp: 0.4, res: 0.25, cutoff_slide: 8 do |e|
    with_fx :reverb, room: 0.25 do
      chordss
      chordss
    end
  end
end



define :smooth_bass do #8 bars
  use_synth :pulse
  with_fx :rlpf, cutoff: 39, amp: 2.5 do
    with_fx :compressor do
      with_fx :reverb, room: 0.5 do
        4. times do
          play :Bb1, sustain: 1.25, pulse_width: 0.1, amp: 0.7
          sleep 3
          play :Ab1, sustain: 0.5, pulse_width: 0.1
          sleep 1
          play :Bb1, sustain: 1.25, pulse_width: 0.1, amp: 0.7
          sleep 2.5
          play :F1, sustain: 0.25,  pulse_width: 0.1
          sleep 0.5
          play :Ab1, sustain: 0.25, pulse_width: 0.1
          sleep 1
        end
      end
    end
  end
end


define :acid_swing2 do
  rando #for normality choose 5
  4. times do
    4.times do
      use_synth :tb303
      use_bpm 59
      play chord(:Bb1, 'm7').choose, release: 0.25, cutoff: rrand(70, 80), amp: 0.5
      sleep 0.225
      play chord(:Bb1, 'm7').choose, release: 0.125, cutoff: rrand(70, 80), amp: 0.5
      sleep 0.15
      play chord(:Bb1, 'm7').choose, release: 0.2, cutoff: rrand(65, 80), amp: 0.5
      sleep 0.25
    end
    4. times do #4
      play chord(:Bb1, 'm7').choose, release: 0.2, cutoff: rrand(65, 80), amp: 0.5
      sleep 0.125
    end
  end
end



define :acid_swing3 do
  use_synth :tb303
  use_bpm 59
  with_fx :lpf, cutoff: 70, mix: 0.9 do
    3. times do
      play chord(:Bb1, 'm7').choose, release: 0.22, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.275
      play chord(:Bb1, 'm7').choose, release: 0.11, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.14
      play chord(:Bb1, 'm7').choose, release: 0.23, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.27
      
      play chord(:Bb1, 'm7').choose, decay: 0.05, release: 0.07, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.145
      play chord(:Bb1, 'm7').choose, decay: 0.05, release: 0.07, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.145
      play chord(:Bb1, 'm7').choose, release: 0.23, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25  #0.29
      play chord(:Bb1, 'm7').choose, decay: 0.05, release: 0.09, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.14
      play chord(:Bb1, 'm7').choose, release: 0.23, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.28
      play chord(:Bb1, 'm7').choose, release: 0.22, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.31
      play chord(:Bb1, 'm7').choose, release: 0.22, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.31
    end
    1. times do
      play chord(:Bb1, 'm7').choose, release: 0.22, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.275
      play chord(:Bb1, 'm7').choose, release: 0.11, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.14
      play chord(:Bb1, 'm7').choose, release: 0.22, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.27
      
      play chord(:Bb1, 'm7').choose, decay: 0.05, release: 0.07, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.145
      play chord(:Bb1, 'm7').choose, decay: 0.05, release: 0.07, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.145
      play chord(:Bb1, 'm7').choose, release: 0.24, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25  #0.29
      play chord(:Bb1, 'm7').choose, decay: 0.05, release: 0.09, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.125 #0.14
      play chord(:Bb1, 'm7').choose, release: 0.24, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.25 #0.28
      play chord(:Bb1, 'm7').choose, release: 0.25, cutoff: rrand(65, 80), amp: 1, attack: 0.01, env_curve: 1
      sleep 0.5 #0.31
    end
  end
end

define :cid_build do
  with_fx :nhpf, cutoff: 20, cutoff_slide: 16 do |j|
    
    control j, cutoff: 60
    1. times do
      acid_swing3
      
    end
    control j, cutoff: 90
    1. times do
      acid_swing3
    end
  end
end
