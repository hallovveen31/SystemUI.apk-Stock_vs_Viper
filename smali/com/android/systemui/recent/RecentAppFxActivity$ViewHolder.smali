.class Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;
.super Ljava/lang/Object;
.source "RecentAppFxActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentAppFxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field isAnimNeeded:Z

.field td:Lcom/android/systemui/recent/TaskDescription;

.field text1:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentAppFxActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->this$0:Lcom/android/systemui/recent/RecentAppFxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;->isAnimNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentAppFxActivity;Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentAppFxActivity$ViewHolder;-><init>(Lcom/android/systemui/recent/RecentAppFxActivity;)V

    return-void
.end method
