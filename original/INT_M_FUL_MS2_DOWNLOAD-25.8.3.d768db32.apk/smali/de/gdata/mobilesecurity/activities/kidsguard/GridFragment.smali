.class public Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field public static final ACTION_REFRESH_GRID:Ljava/lang/String; = "REFRESH_GRID"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/g;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/g;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->h:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/g;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/g;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->h:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v1, "apps"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 78
    const-string v1, "infos"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 80
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    const v1, 0x7f03005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 187
    if-eqz p1, :cond_0

    .line 188
    const v0, 0x7f0b017d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 193
    :cond_0
    const v0, 0x7f0b017e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    const v2, 0x7f0d02bb

    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 199
    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 200
    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 201
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 4

    .prologue
    .line 266
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 267
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 275
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    .line 85
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 88
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardLandscapeColumns()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    .line 89
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardLandscapeRows()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->b:I

    .line 95
    :goto_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a:I

    .line 97
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->e:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "infos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 102
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a:I

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3, v5}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;

    .line 104
    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 106
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    .line 107
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v6, v0, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    .line 109
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v7, 0x10102eb

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 117
    :cond_1
    :goto_1
    new-instance v7, Landroid/widget/TableLayout;

    invoke-direct {v7, v4}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v7, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v0, v2, v3}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 122
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->b:I

    if-ge v2, v0, :cond_8

    .line 123
    new-instance v8, Landroid/widget/TableRow;

    invoke-direct {v8, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v8, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    iget v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    if-ge v3, v0, :cond_7

    .line 127
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->d:Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v7}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 129
    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const/high16 v0, 0x7f0b0000

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 132
    iget v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a:I

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v0, v1

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 133
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->e:Ljava/util/ArrayList;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a:I

    iget v10, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->b:I

    mul-int/2addr v1, v10

    iget v10, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v1, v10

    iget v10, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v10, v2

    add-int/2addr v1, v10

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 136
    invoke-static {v4, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->isElapsedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 138
    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    iget-object v10, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_2
    if-nez v1, :cond_6

    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v9, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Landroid/view/View;F)V

    .line 142
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/h;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/h;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_3
    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 126
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 91
    :cond_4
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardPortraitColumns()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    .line 92
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardPortraitRows()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->b:I

    goto/16 :goto_0

    .line 113
    :cond_5
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v7, 0x7f010002

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    iget v0, v2, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    goto/16 :goto_1

    .line 151
    :cond_6
    const v0, 0x3eb33333    # 0.35f

    invoke-direct {p0, v9, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Landroid/view/View;F)V

    .line 152
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/i;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/i;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_4

    .line 168
    :cond_7
    invoke-virtual {v7, v8}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 122
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 171
    :cond_8
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "REFRESH_GRID"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    return-object v7
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 389
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    return-void
.end method

.method public onGridItemClick(I)V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->e:Ljava/util/ArrayList;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a:I

    iget v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->c:I

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 282
    const-string v2, "/.*$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->startActivity(Landroid/content/Intent;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onGridLongItemClick(I)Z
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 296
    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->a(Ljava/lang/String;)Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment$SelectTimeDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 180
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->updateViews(Landroid/content/Context;)V

    .line 181
    return-void
.end method

.method public updateViews(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lde/gdata/mobilesecurity/services/WatcherService;->isElapsedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v3, 0x3eb33333    # 0.35f

    invoke-direct {p0, v1, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Landroid/view/View;F)V

    .line 212
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v3, Lde/gdata/mobilesecurity/activities/kidsguard/j;

    invoke-direct {v3, p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/j;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/l;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/l;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->a(Landroid/view/View;F)V

    .line 252
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 253
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lde/gdata/mobilesecurity/activities/kidsguard/m;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/activities/kidsguard/m;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/GridFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 263
    :cond_2
    return-void
.end method
