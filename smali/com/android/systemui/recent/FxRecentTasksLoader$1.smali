.class Lcom/android/systemui/recent/FxRecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "FxRecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/FxRecentTasksLoader;->loadThumbnailsInBackground(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/FxRecentTasksLoader;

.field final synthetic val$descriptions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/FxRecentTasksLoader;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/FxRecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 265
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 266
    .local v2, origPri:I
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 271
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/TaskDescription;

    .line 280
    .local v3, td:Lcom/android/systemui/recent/TaskDescription;
    iget-object v4, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/FxRecentTasksLoader;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recent/FxRecentTasksLoader;->loadThumbnail(Lcom/android/systemui/recent/TaskDescription;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 295
    .end local v3           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 296
    const/4 v4, 0x0

    return-object v4

    .line 273
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 275
    .local v0, exception:Ljava/lang/Exception;
    const-string v4, "RecentTasksLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!thread delay fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v0           #exception:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v3       #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_1
    monitor-enter v3

    .line 286
    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 287
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    const-wide/16 v4, 0x19

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 278
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 291
    :catch_1
    move-exception v0

    .line 292
    .restart local v0       #exception:Ljava/lang/Exception;
    const-string v4, "RecentTasksLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!!!thread delay fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 238
    iget-object v2, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/TaskDescription;

    .line 239
    .local v1, td:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p0}, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/FxRecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/FxRecentTasksLoader;->mListener:Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;
    invoke-static {v2}, Lcom/android/systemui/recent/FxRecentTasksLoader;->access$000(Lcom/android/systemui/recent/FxRecentTasksLoader;)Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/recent/FxRecentTasksLoader$RecentTaskListener;->onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->this$0:Lcom/android/systemui/recent/FxRecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/FxRecentTasksLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/recent/FxRecentTasksLoader;->access$100(Lcom/android/systemui/recent/FxRecentTasksLoader;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recent/FxRecentTasksLoader$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/recent/FxRecentTasksLoader$1$1;-><init>(Lcom/android/systemui/recent/FxRecentTasksLoader$1;Lcom/android/systemui/recent/TaskDescription;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->val$descriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 255
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 256
    .local v0, dvm:Ldalvik/system/VMRuntime;
    invoke-virtual {v0, v5}, Ldalvik/system/VMRuntime;->restoreGc(Z)Z

    .line 258
    sget-boolean v2, Lcom/android/systemui/recent/FxRecentTasksLoader;->DEBUG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 259
    const-string v2, "RecentApps.Perf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreGc:false value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v0           #dvm:Ldalvik/system/VMRuntime;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 235
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/FxRecentTasksLoader$1;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
