#jazz route

define :beats do
  with_fx :reverb do
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
  end
  
end

define :jazz_beats do
  with_fx :reverb do
    
    3. times do
      sample :bd_haus, cutoff: 90, amp: 0.3
      sleep 1
      sample :bd_haus, cutoff: 90, amp: 0.3
      
      sleep 0.5
      sample :bd_haus, cutoff: 90, amp: 0.3
      sleep 1
      sample :bd_haus, cutoff: 90, amp: 0.3
      sleep 0.5
      sample :bd_haus, cutoff: 90, amp: 0.3
      
      sleep 1
      
    end
    
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.3
    
    sleep 0.5
    sample :bd_haus, cutoff: 90, amp: 0.3
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.3
    sleep 0.5
    sample :bd_haus, cutoff: 90, amp: 0.3
    sleep 1
  end
end




define :jazz_drums_rando do
  use_bpm 118
  
  3. times do
    sleep 1
    if one_in(2)
      sample :drum_snare_soft, amp: 0.6
    else
      sample :drum_tom_hi_soft, amp: 0.5
    end
    sleep 2
    if one_in(2)
      sample :drum_tom_mid_soft, amp: 0.5
    else
      sample :drum_roll, finish: 0.075, release: 0.6, amp: 0.5
      
    end
    sleep 1
  end
  
  sleep 1
  sample :drum_snare_soft
  sleep 3
end

define :synco_beats do
  with_fx :reverb, room: 0.1 do
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 0.5
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 0.5
    sample :bd_haus, cutoff: 90, amp: 0.4
    sleep 1
  end
end
define :synco_percs do
  sleep 0.5
  sample :drum_cymbal_closed, release: 0.05, finish: 0.3
  sleep 0.5
  sample :perc_snap, amp: 0.5
  sleep 0.5
  sample :drum_cymbal_closed, release: 0.05, finish: 0.3
  sleep 0.25
  sample :perc_snap, amp: 0.5
  sleep 0.5
  sample :tabla_re, release: 0.01
  sleep 0.25
  sample :drum_cymbal_closed, release: 0.05, amp: 0.75
  sleep 0.5
  sample :perc_snap, amp: 0.5
  sleep 0.25
  sample :tabla_re
  sleep 0.25
  sample :drum_cymbal_closed, release: 0.05, finish: 0.3
  sleep 0.5
end

define :syncobeats_w_percs do
  
  in_thread do
    synco_beats
  end
  synco_percs
end









