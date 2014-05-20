.class final Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;
.super Landroid/os/Handler;
.source "QuickSettingSyncAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;-><init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "QuickSettingSyncAll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll$H;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->checkIsSync()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;)Z

    move-result v1

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->updateSyncState(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;->access$600(Lcom/android/systemui/statusbar/quicksetting/QuickSettingSyncAll;Z)V

    return-void
.end method
