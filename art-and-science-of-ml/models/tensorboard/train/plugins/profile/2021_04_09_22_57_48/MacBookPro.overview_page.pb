?	?V$&??(@?V$&??(@!?V$&??(@	????????????!??????"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$?V$&??(@?????%??A???@X(@Y"R?.???*	?/?$?|@2?
{Iterator::Model::MaxIntraOpParallelism::Prefetch::Map::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2:=?Ƃ??!BNbC?M@):=?Ƃ??1BNbC?M@:Preprocessing2?
?Iterator::Model::MaxIntraOpParallelism::Prefetch::Map::Prefetch::Map::BatchV2::ShuffleAndRepeat::LegacyParallelInterleaveV2[0]::CSV?S?K???!?Ռ?+@)?S?K???1?Ռ?+@:Preprocessing2?
MIterator::Model::MaxIntraOpParallelism::Prefetch::Map::Prefetch::Map::BatchV2??.4?i??!?4?UQ@)N?M?g??1?E?A ?@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch?R???Ɨ?!??r?0@)?R???Ɨ?1??r?0@:Preprocessing2?
_Iterator::Model::MaxIntraOpParallelism::Prefetch::Map::Prefetch::Map::BatchV2::ShuffleAndRepeat????`???!N??#??O@)9)?{?i??1?PLE@:Preprocessing2v
?Iterator::Model::MaxIntraOpParallelism::Prefetch::Map::PrefetchW??????!?S]p@)W??????1?S]p@:Preprocessing2]
&Iterator::Model::MaxIntraOpParallelismL?Qԙ??!???!?? @)?????َ?1r}??2
@:Preprocessing2l
5Iterator::Model::MaxIntraOpParallelism::Prefetch::Map?C???X??!???O?@)??F;n???1.??/s	@:Preprocessing2{
DIterator::Model::MaxIntraOpParallelism::Prefetch::Map::Prefetch::Map??zO????!#?Z?Q@)>x?҆?r?1QN? ???:Preprocessing2F
Iterator::Model9_??????!@?z??_"@)??_#Ip?1?y?N????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
device?Your program is NOT input-bound because only 0.9% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9
??????I~?GN?X@Zno#You may skip the rest of this page.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?????%???????%??!?????%??      ??!       "      ??!       *      ??!       2	???@X(@???@X(@!???@X(@:      ??!       B      ??!       J	"R?.???"R?.???!"R?.???R      ??!       Z	"R?.???"R?.???!"R?.???b      ??!       JCPU_ONLYY
??????b q~?GN?X@Y      Y@qn? E?<??"?
device?Your program is NOT input-bound because only 0.9% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 