.class Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;
.super Ljava/lang/Object;
.source "QuickSettingNfc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc$1;->this$0:Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;

    #calls: Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->toggleNextNFCstate()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;->access$000(Lcom/android/systemui/statusbar/quicksetting/QuickSettingNfc;)V

    return-void
.end method
