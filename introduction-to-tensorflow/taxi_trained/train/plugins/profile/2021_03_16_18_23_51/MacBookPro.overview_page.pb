?	??a?Q?????a?Q???!??a?Q???	?ǥ??@?ǥ??@!?ǥ??@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$??a?Q??????uoE??A; ??^???YM֨?ht??*	??S??_i@2?
QIterator::Model::MaxIntraOpParallelism::Prefetch::ShuffleAndRepeat::Map::PrefetchGɫs??!?94[JC@)Gɫs??1?94[JC@:Preprocessing2?
?Iterator::Model::MaxIntraOpParallelism::Prefetch::ShuffleAndRepeat::Map::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2T??~m??!q?W?P,@)T??~m??1q?W?P,@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelism??KTo??!|??-??:@)???n,(??1??.k?+@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch???9????!ps???*@)???9????1ps???*@:Preprocessing2?
qIterator::Model::MaxIntraOpParallelism::Prefetch::ShuffleAndRepeat::Map::Prefetch::Map::BatchV2::ShuffleAndRepeat?V|C᳥?!d?w}??4@)?#??????1??/???@:Preprocessing2~
GIterator::Model::MaxIntraOpParallelism::Prefetch::ShuffleAndRepeat::Map?u???_??!%?Wi}F@)?u?????1?,q?@:Preprocessing2y
BIterator::Model::MaxIntraOpParallelism::Prefetch::ShuffleAndRepeat?&1???!??(?I@)j???????1?$???@:Preprocessing2F
Iterator::ModelN?E? ??!j1z?<@)쉮?8o?1??W= 
??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 7.0% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*high2t24.2 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9?ǥ??@I??????W@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???uoE?????uoE??!???uoE??      ??!       "      ??!       *      ??!       2	; ??^???; ??^???!; ??^???:      ??!       B      ??!       J	M֨?ht??M֨?ht??!M֨?ht??R      ??!       Z	M֨?ht??M֨?ht??!M֨?ht??b      ??!       JCPU_ONLYY?ǥ??@b q??????W@Y      Y@q{?}??@"?	
both?Your program is MODERATELY input-bound because 7.0% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
nohigh"t24.2 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.2no:
Refer to the TF2 Profiler FAQ2"CPU: B 