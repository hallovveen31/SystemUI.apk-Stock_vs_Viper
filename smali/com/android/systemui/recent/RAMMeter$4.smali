.class Lcom/android/systemui/recent/RAMMeter$4;
.super Ljava/lang/Object;
.source "RAMMeter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RAMMeter;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RAMMeter;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RAMMeter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RAMMeter$4;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/recent/RAMMeter$4;->this$0:Lcom/android/systemui/recent/RAMMeter;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RAMMeter;->clearRecentApps()V

    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "su"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "/system/bin/sh"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "sync\necho 3 > /proc/sys/vm/drop_caches\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v3, "\nexit\n"

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RAMMeter$4;->this$0:Lcom/android/systemui/recent/RAMMeter;

    #getter for: Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
    invoke-static {v3}, Lcom/android/systemui/recent/RAMMeter;->access$1(Lcom/android/systemui/recent/RAMMeter;)Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RAMMeter$4;->this$0:Lcom/android/systemui/recent/RAMMeter;

    #getter for: Lcom/android/systemui/recent/RAMMeter;->mCallback:Lcom/android/systemui/recent/RAMMeter$onTasksCleared;
    invoke-static {v3}, Lcom/android/systemui/recent/RAMMeter;->access$1(Lcom/android/systemui/recent/RAMMeter;)Lcom/android/systemui/recent/RAMMeter$onTasksCleared;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/recent/RAMMeter$onTasksCleared;->onClicked()V

    :cond_0
    return v6

    :catch_0
    move-exception v0

    const-string v3, "ClearRecents"

    const-string v4, "Flush caches failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
