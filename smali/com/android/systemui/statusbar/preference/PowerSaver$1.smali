.class Lcom/android/systemui/statusbar/preference/PowerSaver$1;
.super Ljava/lang/Object;
.source "PowerSaver.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerSaver;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    #calls: Lcom/android/systemui/statusbar/preference/PowerSaver;->setToggles(Z)V
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$0(Lcom/android/systemui/statusbar/preference/PowerSaver;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$1(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_powersaver_enable"

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/PowerSaver;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->Cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$1(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "user_powersaver_enable_bk"

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v5, v5, Lcom/android/systemui/statusbar/preference/PowerSaver;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v5}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.htcpowermanager.powersaver.ON_NOTIF_TOGGLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "toggle_state"

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/PowerSaver;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$2(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method
