.class Lcom/android/systemui/statusbar/preference/ScreenOn$3;
.super Ljava/lang/Object;
.source "ScreenOn.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/ScreenOn;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$3;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$3;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$3;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/preference/ScreenOn;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
