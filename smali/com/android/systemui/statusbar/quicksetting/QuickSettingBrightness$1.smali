.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;
.super Ljava/lang/Object;
.source "QuickSettingBrightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->nextProfileState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingBrightness;)V

    return-void
.end method
