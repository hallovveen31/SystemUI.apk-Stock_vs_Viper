.class Lcom/android/systemui/statusbar/preference/MobileNetwork$4;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->toggleSettings()V

    const/4 v0, 0x1

    return v0
.end method

.method public toggleSettings()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v1, v2, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.Settings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$4;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
