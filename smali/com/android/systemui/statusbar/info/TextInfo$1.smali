.class Lcom/android/systemui/statusbar/info/TextInfo$1;
.super Landroid/os/Handler;
.source "TextInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/info/TextInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/info/TextInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/info/TextInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x64

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/TextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/info/TextInfo;->setText(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    #getter for: Lcom/android/systemui/statusbar/info/TextInfo;->mCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->access$0(Lcom/android/systemui/statusbar/info/TextInfo;)Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;->onTextUpdate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->getUpdateInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    #getter for: Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->access$1(Lcom/android/systemui/statusbar/info/TextInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    #getter for: Lcom/android/systemui/statusbar/info/TextInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->access$1(Lcom/android/systemui/statusbar/info/TextInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/info/TextInfo;->getUpdateInterval()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    #getter for: Lcom/android/systemui/statusbar/info/TextInfo;->mCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->access$0(Lcom/android/systemui/statusbar/info/TextInfo;)Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;->onIconUpdate(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/info/TextInfo$1;->this$0:Lcom/android/systemui/statusbar/info/TextInfo;

    #getter for: Lcom/android/systemui/statusbar/info/TextInfo;->mCallback:Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;
    invoke-static {v0}, Lcom/android/systemui/statusbar/info/TextInfo;->access$0(Lcom/android/systemui/statusbar/info/TextInfo;)Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/info/TextInfo$TextInfoCallback;->onSetVisibility(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
    .end sparse-switch
.end method
