.class Lcom/android/systemui/statusbar/preference/HotSpot$3;
.super Ljava/lang/Object;
.source "HotSpot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/HotSpot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v8, v8, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButtonLight;

    invoke-virtual {v8}, Lcom/htc/widget/HtcToggleButtonLight;->isChecked()Z

    move-result v8

    if-nez v8, :cond_0

    move v3, v6

    :goto_0
    const-string v8, "HotSpotStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set wifi enable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v9, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    iget-object v9, v9, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v10, "wifi"

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v8, v9, v10}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$200(Lcom/android/systemui/statusbar/preference/HotSpot;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :goto_1
    return-void

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #getter for: Lcom/android/systemui/statusbar/preference/HotSpot;->mEnableMhs:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$300(Lcom/android/systemui/statusbar/preference/HotSpot;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    const-string v8, "HotSpotStatusBarPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->handleMhs(Z)Z
    invoke-static {v8, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$400(Lcom/android/systemui/statusbar/preference/HotSpot;Z)Z

    move-result v4

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/preference/HotSpot$3;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->switchHotspotOnOff(Z)V
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$900(Lcom/android/systemui/statusbar/preference/HotSpot;Z)V

    goto/16 :goto_1
.end method
