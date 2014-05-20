.class Lcom/android/systemui/statusbar/preference/AirplaneMode$1;
.super Ljava/lang/Object;
.source "AirplaneMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/AirplaneMode;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    #calls: Lcom/android/systemui/statusbar/preference/AirplaneMode;->setAirplaneModeOn(Z)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->access$0(Lcom/android/systemui/statusbar/preference/AirplaneMode;Z)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0a0153

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/AirplaneMode;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0a0154

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
