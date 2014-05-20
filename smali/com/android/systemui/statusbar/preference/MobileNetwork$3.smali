.class Lcom/android/systemui/statusbar/preference/MobileNetwork$3;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/MobileNetwork;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string v1, "MobileNetworkStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set mobiledata enable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->setMobileDataEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$12(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
