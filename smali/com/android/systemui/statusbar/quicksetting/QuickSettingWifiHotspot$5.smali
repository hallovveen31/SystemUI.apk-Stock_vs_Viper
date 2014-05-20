.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;
.super Ljava/lang/Object;
.source "QuickSettingWifiHotspot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->requestMHSStateChange()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$5;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->animateCollapseAndUnlock()V

    return-void
.end method
