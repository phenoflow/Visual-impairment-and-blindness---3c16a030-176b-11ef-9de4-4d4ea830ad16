cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  visual-impairment-and-blindness-sight---primary:
    run: visual-impairment-and-blindness-sight---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  visual-impairment-and-blindness---primary:
    run: visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-sight---primary/output
  visual-impairment-and-blindness-provision---primary:
    run: visual-impairment-and-blindness-provision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness---primary/output
  severe-visual-impairment-and-blindness---primary:
    run: severe-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-provision---primary/output
  visual-impairment-and-blindness-deafblind---primary:
    run: visual-impairment-and-blindness-deafblind---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: severe-visual-impairment-and-blindness---primary/output
  visual-impairment-and-blindness-telephone---primary:
    run: visual-impairment-and-blindness-telephone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-deafblind---primary/output
  binocular-visual-impairment-and-blindness---primary:
    run: binocular-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-telephone---primary/output
  moderate-visual-impairment-and-blindness---primary:
    run: moderate-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: binocular-visual-impairment-and-blindness---primary/output
  visual-impairment-and-blindness-acquired---primary:
    run: visual-impairment-and-blindness-acquired---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: moderate-visual-impairment-and-blindness---primary/output
  monocular-visual-impairment-and-blindness---primary:
    run: monocular-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-acquired---primary/output
  total-visual-impairment-and-blindness---primary:
    run: total-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: monocular-visual-impairment-and-blindness---primary/output
  profound-visual-impairment-and-blindness---primary:
    run: profound-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: total-visual-impairment-and-blindness---primary/output
  visual-impairment-and-blindness-guide---primary:
    run: visual-impairment-and-blindness-guide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: profound-visual-impairment-and-blindness---primary/output
  visual-impairment-and-blindness-registered---primary:
    run: visual-impairment-and-blindness-registered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-guide---primary/output
  visual-impairment-and-blindness-communicator---primary:
    run: visual-impairment-and-blindness-communicator---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-registered---primary/output
  visual-impairment-and-blindness-unspecified---primary:
    run: visual-impairment-and-blindness-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-communicator---primary/output
  retinopathy-visual-impairment-and-blindness---primary:
    run: retinopathy-visual-impairment-and-blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-unspecified---primary/output
  visual-impairment-and-blindness-hearing---primary:
    run: visual-impairment-and-blindness-hearing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: retinopathy-visual-impairment-and-blindness---primary/output
  visual-impairment-and-blindness-unqualified---primary:
    run: visual-impairment-and-blindness-unqualified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-hearing---primary/output
  visual-impairment-and-blindness-pinhole---primary:
    run: visual-impairment-and-blindness-pinhole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-unqualified---primary/output
  blindness---primary:
    run: blindness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: visual-impairment-and-blindness-pinhole---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: blindness---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
