.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;
.super Ljava/lang/Object;
.source "QuickSettingWifiHotspot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->onAttachedToWindow()V
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
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->toggleState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingWifiHotspot;)V

    .line 82
    return-void
.end method
