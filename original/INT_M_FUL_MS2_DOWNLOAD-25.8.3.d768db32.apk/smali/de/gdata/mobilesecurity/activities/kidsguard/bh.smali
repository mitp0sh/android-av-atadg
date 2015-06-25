.class Lde/gdata/mobilesecurity/activities/kidsguard/bh;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

.field private b:[Landroid/widget/ImageView;

.field private c:[I


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V
    .locals 1

    .prologue
    .line 1074
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->b:[Landroid/widget/ImageView;

    .line 1077
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0201ac
        0x7f0201ad
        0x7f0201ae
        0x7f0201aa
        0x7f0201ab
    .end array-data
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Lde/gdata/mobilesecurity/activities/kidsguard/am;)V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/bh;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1105
    check-cast p3, Landroid/widget/ImageView;

    .line 1106
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1108
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->c:[I

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1092
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1093
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1095
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0071

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1096
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1097
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1098
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1099
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bh;->c:[I

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1100
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1087
    check-cast p2, Landroid/widget/ImageView;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
