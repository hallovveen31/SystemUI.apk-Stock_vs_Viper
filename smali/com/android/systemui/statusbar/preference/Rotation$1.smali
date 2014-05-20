.class Lcom/android/systemui/statusbar/preference/Rotation$1;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Rotation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Rotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v3, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v4}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0153

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
