.class public Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Lde/gdata/mobilesecurity/intents/Main;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/intents/Main;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1956
    iput-object p1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    .line 1957
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1920
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->a:Landroid/view/LayoutInflater;

    .line 1959
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->prepareEntries()V

    .line 1961
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->a:Landroid/view/LayoutInflater;

    .line 1962
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v4, 0x7f0b02ae

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1979
    .line 1984
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->b()[I

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    if-ne v0, v6, :cond_1

    .line 1985
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030074

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1986
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1987
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->i(Lde/gdata/mobilesecurity/intents/Main;)I

    move-result v2

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0061

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object v2, v3

    move-object v4, v0

    move-object v5, v1

    .line 2005
    :goto_0
    const v0, 0x7f0b02af

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2007
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->a()[I

    move-result-object v8

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v8, v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2009
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v8, 0x13

    if-ne v1, v8, :cond_3

    .line 2010
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    const v8, 0x7f02014f

    invoke-static {v1, v0, v8}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;I)V

    .line 2016
    :goto_1
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->c()[I

    move-result-object v8

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v8, v1

    if-eqz v1, :cond_6

    .line 2017
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v3, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->d()[I

    move-result-object v8

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v8, v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2021
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2025
    :goto_3
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    if-ne v1, v2, :cond_0

    .line 2026
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1, v5}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;)Landroid/view/View;

    .line 2027
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2029
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    const v2, 0x7f020157

    invoke-static {v1, v0, v2}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;I)V

    .line 2032
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->f(Lde/gdata/mobilesecurity/intents/Main;)[I

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_7

    .line 2033
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2037
    :goto_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->l(Lde/gdata/mobilesecurity/intents/Main;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2039
    return-object v5

    .line 1991
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030075

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1992
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1994
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v4, Lde/gdata/mobilesecurity/intents/Main;->activeItem:I

    if-eq v1, v4, :cond_2

    .line 1995
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v4}, Lde/gdata/mobilesecurity/intents/Main;->j(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/BasePreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1996
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 2002
    :goto_5
    const v1, 0x7f0b02b0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v4, v0

    move-object v5, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 1998
    :cond_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v4}, Lde/gdata/mobilesecurity/intents/Main;->j(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/BasePreferences;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 1999
    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 2011
    :cond_3
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->b()[I

    move-result-object v8

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v8, v1

    if-ne v1, v6, :cond_4

    .line 2012
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    const v8, 0x7f020152

    invoke-static {v1, v4, v8}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;I)V

    goto/16 :goto_1

    .line 2014
    :cond_4
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    const v8, 0x7f020158

    invoke-static {v1, v0, v8}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;Landroid/view/View;I)V

    goto/16 :goto_1

    .line 2017
    :cond_5
    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->c()[I

    move-result-object v8

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, v8, v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_2

    .line 2023
    :cond_6
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 2035
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->k(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->g(Lde/gdata/mobilesecurity/intents/Main;)I

    move-result v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->f(Lde/gdata/mobilesecurity/intents/Main;)[I

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v3, v0

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    move v0, v6

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    move v0, v7

    goto :goto_6
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 1969
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->b()[I

    move-result-object v1

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareEntries()V
    .locals 5

    .prologue
    const/16 v4, 0x13

    const/4 v1, 0x0

    .line 1923
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->clear()V

    .line 1925
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1926
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->e(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 1928
    :goto_0
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->a()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 1929
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->f(Lde/gdata/mobilesecurity/intents/Main;)[I

    move-result-object v2

    aget v2, v2, v0

    const/high16 v3, 0x800000

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->g(Lde/gdata/mobilesecurity/intents/Main;)I

    move-result v2

    iget-object v3, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v3}, Lde/gdata/mobilesecurity/intents/Main;->f(Lde/gdata/mobilesecurity/intents/Main;)[I

    move-result-object v3

    aget v3, v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 1931
    :cond_0
    if-ne v0, v4, :cond_2

    .line 1932
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isKidsguardConfiguring()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1934
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1935
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->h(Lde/gdata/mobilesecurity/intents/Main;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1936
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->a(Lde/gdata/mobilesecurity/intents/Main;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isMMSEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1939
    :cond_3
    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1943
    :cond_4
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 1944
    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->b()[I

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    if-nez v0, :cond_5

    .line 1945
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->a()[I

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->add(Ljava/lang/Object;)V

    .line 1943
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1946
    :cond_5
    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->b()[I

    move-result-object v2

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v2, v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_6

    .line 1948
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/intents/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lde/gdata/mobilesecurity/intents/Main;->a()[I

    move-result-object v3

    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 1950
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->e(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v2}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1953
    :cond_7
    iget-object v0, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v0}, Lde/gdata/mobilesecurity/intents/Main;->d(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/intents/Main$MenuItemAdapter;->b:Lde/gdata/mobilesecurity/intents/Main;

    invoke-static {v1}, Lde/gdata/mobilesecurity/intents/Main;->e(Lde/gdata/mobilesecurity/intents/Main;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1954
    return-void
.end method
