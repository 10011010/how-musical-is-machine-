#structure

define :d1 do
  
  2. times do #2 16 bars
    jazz_drums
  end
  
  in_thread do
    1. times do
      jazz_drums #8 bars
    end
  end
  
  2. times do
    jazz_drums_rando #8 bars
  end
  
  
  in_thread do
    1. times do
      jazz_drums #8 bars
    end
  end
  
  in_thread do
    2. times do
      jazz_drums_rando
    end
  end
  
  2. times do
    jazz_beats
  end
  
  
  1. times do
    jazz_drums #8 bars
  end
  
  
  
  0. times do
    jazz_drums_rando
  end
  
  in_thread do
    1. times do
      jazz_drums #8 bars
    end
  end
  
  
  2. times do
    jazz_drums_rando
  end
  
  
  in_thread do
    2. times do
      jazz_drums #16 bars
    end
  end
  
  in_thread do
    4. times do
      jazz_drums_rando
    end
  end
  
  
  4. times do
    jazz_beats
  end
  stop
end


define :d4 do
  sleep 16
  4. times do
    beats #1 bar
  end
  2. times do #8 bars
    house_w_snare
  end
  
  2. times do
    house_2 #8 bars
  end
  2. times do
    house_tops
  end
  4. times do
    house_2 #8 bars
  end
  stop
end

define :d3 do
  
  use_bpm 118
  
  in_thread do
    1. times do
      conga_drums #8 bars
    end
  end
  in_thread do
    sleep 64#32
    16. times do
      beats
    end
    sleep 64 #32
    24. times do
      beats
    end
  end
  
  in_thread do
    sleep 32
    2. times do
      conga_and_shaker
    end
  end
  sleep 96
  1. times do
    conga_w_percs
  end
  
  1. times do
    conga_and_shaker
  end
  
  4. times do
    conga_w_percs
  end
  stop
end


define :d2 do
  sleep 16
  4. times do
    synco_beats
  end
  24. times do
    syncobeats_w_percs
  end
  
  16. times do
    synco_percs
  end
  
  16. times do
    syncobeats_w_percs
  end
  stop
end




define :d5 do
  2. times do #16
    hip_intro
  end
  
  
  2. times do
    hip_full
  end
  
  2. times do
    hip_intro
  end
  
  2. times do
    hip_full
  end
  stop
end

define :d6 do
  
  sleep 16
  
  randrums
  
  randrums_w_snare
  
  in_thread do
    4. times do
      randrums
    end
  end
  
  2. times do
    randpercs
  end
  
  2. times do
    randpercs
  end
  
  
  in_thread do
    4. times do
      randrums
    end
  end
  
  2. times do
    randpercs
  end
  
  stop
end

define :p1 do
  
  sleep 32
  1. times do
    chop_intro #8 bars
  end
  2. times do
    sleep 0 #16
    chop_intro2 #8 bars
  end
  sleep 0
  2. times do #4times
    build_intro2
  end
  
  sleep 0 #64
  2. times do
    high_chords
  end
  stop
end

define :p2 do
  
  sleep 32
  1. times do
    build_intro_up1
  end
  2. times do
    build_intro_up2
  end
  2. times do
    build_up_piano
  end
  
  2. times do
    high_up_chords
  end
  stop
end







define :m3 do
  melintro3
  melbuild3
  fullmel3
  stop
end



define :b1 do
  use_bpm 118
  sleep 160
  in_thread do
    sleep 28.4514
    sample :drum_cymbal_open, rate: -1, amp: 0.2
  end
  
  with_fx :level, amp: 0.75, amp_slide: 32 do |l|
    control l, amp: 1
    2. times do
      double_bass
    end
  end
  
  1. times do
    double_bass
  end
  stop
end

define :b2 do
  use_bpm 118
  sleep 188.4514
  sample :drum_cymbal_open, rate: -1, amp: 0.2
  sleep sample_duration :drum_cymbal_open
  2. times do
    smooth_bass
  end
end

define :b3 do
  sleep 160
  
  in_thread do
    sleep 28.4514
    sample :drum_cymbal_open, rate: -1, amp: 0.2
  end
  with_fx :level, amp: 0.05, amp_slide: 32 do |k|
    with_fx :reverb, room: 0.5 do
      control k, amp: 0.4
      cid_build
    end
  end
  
  4. times do
    with_fx :reverb, room: 0.8, amp: 0.5 do
      acid_swing3
    end
  end
end



define :t1 do
  100. times do
    #sample "/Users/dominiclewisohn/Desktop/Vinyl Crackles (1).wav", amp: 0.5
    #sleep sample_duration "/Users/dominiclewisohn/Desktop/Vinyl Crackles (1).wav"
    sample :vinyl_hiss, amp: 0.3
    sleep sample_duration :vinyl_hiss
  end
  stop
end

define :darkambience do
  use_synth :dark_ambience
  100. times do
    play :Bb2, amp: 0.1, sustain: 4
    sleep 4
    play :Bb2, amp: 0.1, sustain: 4
    sleep 4
  end
  stop
end

define :lightambience do
  100. times do
    use_synth :hollow
    with_fx :ixi_techno, cutoff_min: 55, cutoff_max: 80, mix: 0.5 do
      play :Bb3, amp: 0.05, decay: 6.25
      sleep 8
    end
  end
  stop
end














