.class public Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
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
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 45
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    .line 46
    iput p2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->c:I

    .line 47
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->d:Ljava/util/ArrayList;

    .line 48
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->e:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 51
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 57
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardLandscapeColumns()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardLandscapeRows()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardPortraitColumns()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardPortraitRows()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 69
    iget v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->c:I

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->d:Ljava/util/ArrayList;

    iget v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->c:I

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->getCount()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v9, 0x7f0200a6

    .line 90
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 92
    if-nez p2, :cond_0

    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    :cond_0
    const v0, 0x7f0b01f1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0b0046

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 96
    const v2, 0x7f0b01f0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/kidsguard/PaddedFrameLayout;

    .line 98
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_5

    .line 101
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 102
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->e:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 104
    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppLabelColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    const/4 v5, 0x1

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41800000    # 16.0f

    iget-object v8, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v8}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppLabelTextsize()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 108
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02009f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 110
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 114
    const-string v0, "1"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 142
    :goto_0
    return-object p2

    .line 117
    :cond_1
    const-string v0, "2"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "3"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "4"

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getKidsguardAppBackground()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020197

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/GridAdapter;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
