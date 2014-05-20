.class Lcom/android/systemui/statusbar/preference/BT$1;
.super Ljava/lang/Object;
.source "BT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/BT;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/BT;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/BT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v0, v1, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/BT;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v2

    #calls: Lcom/android/systemui/statusbar/preference/BT;->handleBt(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/BT;->access$0(Lcom/android/systemui/statusbar/preference/BT;Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButtonLight;->setChecked(Z)V

    goto :goto_0
.end method
