.class Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;
.super Ljava/lang/Object;
.source "SyncAllButton.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "syncObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 5

    const/4 v4, 0x1

    const-string v1, "Venom"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStatusChanged which :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->removeMessages(I)V

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$syncObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->mHandler:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->access$0(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
