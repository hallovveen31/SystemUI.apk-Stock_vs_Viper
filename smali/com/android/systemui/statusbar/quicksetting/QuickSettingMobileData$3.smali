.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingMobileData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$402(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;Z)Z

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 212
    :cond_2
    const-string v1, "QuickSettingMobileData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive:MOBILEDATA_MODE mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " airplane:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v3

    .line 209
    goto :goto_1

    :cond_4
    move v2, v3

    .line 210
    goto :goto_2

    .line 215
    :cond_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z
    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$502(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;Z)Z

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v1

    if-ne v1, v3, :cond_6

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->setEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 234
    :goto_3
    const-string v1, "QuickSettingMobileData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive:AIRPLANE_MODE mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " airplane:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->airplaneState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->imageview:Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$200(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/quicksetting/ScaleImageView;->setOverlayEnable(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->indicatorview:Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;
    invoke-static {v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$300(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData$3;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;

    #getter for: Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->mobileState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;->access$400(Lcom/android/systemui/statusbar/quicksetting/QuickSettingMobileData;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_5
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/quicksetting/LevelIndicator;->setLevel(II)V

    goto :goto_3

    :cond_7
    move v1, v3

    .line 230
    goto :goto_4

    :cond_8
    move v2, v3

    .line 231
    goto :goto_5
.end method
