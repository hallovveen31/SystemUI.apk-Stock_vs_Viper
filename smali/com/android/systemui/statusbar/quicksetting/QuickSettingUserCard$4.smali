.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingUserCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "QuickSettingUserCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard$4;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;

    const/16 v1, 0x258

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->reloadUserInfo(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;->access$1500(Lcom/android/systemui/statusbar/quicksetting/QuickSettingUserCard;I)V

    return-void
.end method
