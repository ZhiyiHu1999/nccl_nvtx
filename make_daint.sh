#!/bin/bash

cd nccl

module load cudatoolkit/21.5_11.3
module list

make clean

export NPKIT_FLAGS="-DENABLE_NPKIT -DENABLE_NPKIT_EVENT_TIME_SYNC_CPU -DENABLE_NPKIT_EVENT_TIME_SYNC_GPU \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_SEND_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_RECV_REDUCE_SEND_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_RECV_REDUCE_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_DIRECT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_DIRECT_RECV_REDUCE_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_DIRECT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_DIRECT_RECV_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_DIRECT_RECV_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_DIRECT_RECV_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_UPDOWN_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_UPDOWN_EXIT \
 -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_SPLIT_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_SPLIT_EXIT \
 -DENABLE_NPKIT_EVENT_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_DIRECT_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_DIRECT_RECV_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_EXIT \
 -DENABLE_NPKIT_EVENT_DIRECT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_DIRECT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_REDUCE_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_DIRECT_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_DIRECT_SEND_FROM_OUTPUT_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_SEND_FROM_OUTPUT_EXIT \
 -DENABLE_NPKIT_EVENT_RECV_ENTRY -DENABLE_NPKIT_EVENT_RECV_EXIT \
 -DENABLE_NPKIT_EVENT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_EXIT \
 -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_RECV_REDUCE_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_SEND_ENTRY -DENABLE_NPKIT_EVENT_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_SEND_FROM_OUTPUT_ENTRY -DENABLE_NPKIT_EVENT_SEND_FROM_OUTPUT_EXIT \
 -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_WAIT_PEER_ENTRY -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_WAIT_PEER_EXIT \
 -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_REDUCE_OR_COPY_MULTI_ENTRY -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_REDUCE_OR_COPY_MULTI_EXIT \
 -DENABLE_NPKIT_EVENT_PRIM_LL_WAIT_SEND_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_WAIT_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_EXIT \
 -DENABLE_NPKIT_EVENT_PRIM_LL128_WAIT_SEND_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL128_WAIT_SEND_EXIT \
 -DENABLE_NPKIT_EVENT_PRIM_LL128_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL128_DATA_PROCESS_EXIT \
 -DENABLE_NPKIT_EVENT_NET_SEND_ENTRY -DENABLE_NPKIT_EVENT_NET_SEND_EXIT -DENABLE_NPKIT_EVENT_NET_RECV_ENTRY -DENABLE_NPKIT_EVENT_NET_RECV_EXIT"

# export NPKIT_FLAGS="-DENABLE_NPKIT -DENABLE_NPKIT_EVENT_TIME_SYNC_CPU -DENABLE_NPKIT_EVENT_TIME_SYNC_GPU -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_EXIT \
#  -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_UPDOWN_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_UPDOWN_EXIT \
#  -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_SPLIT_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_TREE_SPLIT_EXIT \
#  -DENABLE_NPKIT_EVENT_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_COPY_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_DIRECT_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_COPY_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_DIRECT_RECV_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_EXIT \
#  -DENABLE_NPKIT_EVENT_DIRECT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_COPY_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_DIRECT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_RECV_REDUCE_COPY_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_DIRECT_SEND_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_DIRECT_SEND_FROM_OUTPUT_ENTRY -DENABLE_NPKIT_EVENT_DIRECT_SEND_FROM_OUTPUT_EXIT \
#  -DENABLE_NPKIT_EVENT_RECV_ENTRY -DENABLE_NPKIT_EVENT_RECV_EXIT \
#  -DENABLE_NPKIT_EVENT_RECV_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_COPY_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_EXIT \
#  -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_COPY_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_RECV_REDUCE_SEND_ENTRY -DENABLE_NPKIT_EVENT_RECV_REDUCE_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_SEND_ENTRY -DENABLE_NPKIT_EVENT_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_SEND_FROM_OUTPUT_ENTRY -DENABLE_NPKIT_EVENT_SEND_FROM_OUTPUT_EXIT \
#  -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_WAIT_PEER_ENTRY -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_WAIT_PEER_EXIT \
#  -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_REDUCE_OR_COPY_MULTI_ENTRY -DENABLE_NPKIT_EVENT_PRIM_SIMPLE_REDUCE_OR_COPY_MULTI_EXIT \
#  -DENABLE_NPKIT_EVENT_PRIM_LL_WAIT_SEND_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_WAIT_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL_DATA_PROCESS_EXIT \
#  -DENABLE_NPKIT_EVENT_PRIM_LL128_WAIT_SEND_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL128_WAIT_SEND_EXIT \
#  -DENABLE_NPKIT_EVENT_PRIM_LL128_DATA_PROCESS_ENTRY -DENABLE_NPKIT_EVENT_PRIM_LL128_DATA_PROCESS_EXIT \
#  -DENABLE_NPKIT_EVENT_NET_SEND_ENTRY -DENABLE_NPKIT_EVENT_NET_SEND_EXIT -DENABLE_NPKIT_EVENT_NET_RECV_ENTRY -DENABLE_NPKIT_EVENT_NET_RECV_EXIT"

# export NPKIT_FLAGS="-DENABLE_NPKIT -DENABLE_NPKIT_EVENT_TIME_SYNC_CPU -DENABLE_NPKIT_EVENT_TIME_SYNC_GPU -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_ENTRY -DENABLE_NPKIT_EVENT_ALL_REDUCE_RING_EXIT \
#     -DENABLE_NPKIT_EVENT_SEND_ENTRY -DENABLE_NPKIT_EVENT_SEND_EXIT \
#     -DENABLE_NPKIT_EVENT_RECV_ENTRY -DENABLE_NPKIT_EVENT_RECV_EXIT"

# make -j src.build CUDA_HOME=/opt/nvidia/hpc_sdk/Linux_x86_64/21.5/cuda/11.3 NVCC_GENCODE="-gencode=arch=compute_80,code=sm_80" NPKIT_FLAGS="$NPKIT_FLAGS"
make -j src.build CUDA_HOME=/opt/nvidia/hpc_sdk/Linux_x86_64/21.5/cuda/11.3 NVCC_GENCODE="-gencode=arch=compute_60,code=sm_60" NPKIT_FLAGS="$NPKIT_FLAGS"
    