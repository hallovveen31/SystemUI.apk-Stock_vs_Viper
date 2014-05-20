.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$1;
.super Ljava/lang/Object;
.source "QuickSettingAPN.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->switchAPNstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingAPN;)V

    .line 76
    return-void
.end method
