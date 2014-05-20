.class Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;
.super Ljava/lang/Object;
.source "NetworkControllerDual.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerDual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeUIRunnable"
.end annotation


# instance fields
.field private slot:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mSync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run: wrong slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->mDataModel:[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;)[Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    aget-object v0, v1, v3

    if-nez v0, :cond_1

    const-string v1, "NetworkController"

    const-string v3, "run: dm is null??"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FakeUI]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Stop forcibly!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$DataModel;->mFakeui:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateSimStateBySlot(I)Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    #calls: Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->updateIconBySlot(I)V
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerDual;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerDual;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->refreshViews()V

    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerDual;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FakeUI]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerDual$FakeUIRunnable;->slot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Stop already!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
