.class final Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;
.super Landroid/os/Handler;
.source "SyncAllButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;-><init>(Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "Venom"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton$H;->this$0:Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->getCurrentState()Lcom/android/systemui/statusbar/powerwidget/Toggle$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/SyncAllButton;->setCurrentState(Lcom/android/systemui/statusbar/powerwidget/Toggle$State;)V

    return-void
.end method
