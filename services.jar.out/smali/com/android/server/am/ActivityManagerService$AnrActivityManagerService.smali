.class Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrActivityManagerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 21813
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "clearTraces"    # Z
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p5, "nativeProcs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 21846
    .local p2, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getInterestingPids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21839
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMonitorCpuUsage()Z
    .locals 1

    .prologue
    .line 21852
    const/4 v0, 0x1

    return v0
.end method

.method public getPidFromLruProcesses(IILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 4
    .param p1, "appPid"    # I
    .param p2, "parentPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21822
    .local p3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 21823
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 21824
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_0

    .line 21825
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 21826
    .local v1, "pid":I
    if-lez v1, :cond_0

    if-eq v1, p1, :cond_0

    if-eq v1, p2, :cond_0

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v3, :cond_0

    .line 21827
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_1

    .line 21828
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21822
    .end local v1    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21830
    .restart local v1    # "pid":I
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 21835
    .end local v1    # "pid":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2
    return-void
.end method

.method public getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;
    .locals 1

    .prologue
    .line 21862
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method public getProcessRecordPid(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21867
    if-eqz p1, :cond_0

    .line 21868
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 21870
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getShuttingDown()Z
    .locals 1

    .prologue
    .line 21816
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    return v0
.end method

.method public updateCpuStatsNow()V
    .locals 1

    .prologue
    .line 21857
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 21858
    return-void
.end method
