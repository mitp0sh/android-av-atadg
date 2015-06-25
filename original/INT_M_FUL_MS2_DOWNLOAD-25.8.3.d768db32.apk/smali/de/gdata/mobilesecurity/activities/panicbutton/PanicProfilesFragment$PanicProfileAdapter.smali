.class public Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 244
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;

    .line 245
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 242
    const v0, 0xffef

    iput v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->a:I

    .line 246
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->c:Landroid/view/LayoutInflater;

    .line 247
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 277
    if-nez p2, :cond_0

    .line 278
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 283
    :cond_0
    const v0, 0x7f0b0302

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 284
    invoke-static {}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 286
    invoke-static {}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    .line 288
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/t;

    invoke-direct {v2, p0, v1}, Lde/gdata/mobilesecurity/activities/panicbutton/t;-><init>(Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    new-instance v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;-><init>(Landroid/content/Context;)V

    .line 299
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->b:Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesDB;->getAllPanicActionsById(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 301
    const-string v2, ""

    .line 302
    const/4 v6, 0x0

    .line 303
    const/4 v7, 0x0

    .line 304
    const/4 v8, 0x0

    .line 305
    const/4 v9, 0x0

    .line 307
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v3, v2

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    iget v3, v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    .line 310
    :goto_1
    iget v4, v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 311
    :goto_2
    iget v5, v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    .line 312
    :goto_3
    iget v2, v2, Lde/gdata/mobilesecurity/activities/panicbutton/PanicAction;->TYPE:I

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    move v9, v2

    move v8, v5

    move v7, v4

    move v6, v3

    move-object v3, v10

    .line 314
    goto :goto_0

    :cond_1
    move v3, v6

    .line 309
    goto :goto_1

    :cond_2
    move v4, v7

    .line 310
    goto :goto_2

    :cond_3
    move v5, v8

    .line 311
    goto :goto_3

    :cond_4
    move v2, v9

    .line 312
    goto :goto_4

    .line 315
    :cond_5
    const v2, 0x7f0b01c7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 316
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    const v2, 0x7f0b0305

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 318
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const v2, 0x7f0b01d0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 321
    const v3, 0x7f0b02e8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 322
    const v4, 0x7f0b01d4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 323
    const v5, 0x7f0b01d2

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 325
    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    if-eqz v7, :cond_8

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    if-eqz v8, :cond_9

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    if-eqz v9, :cond_a

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    const v2, 0x7f0b0303

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 331
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->getDrawableForProfile(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;)I

    move-result v1

    .line 333
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 334
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 335
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 336
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    :cond_6
    return-object p2

    .line 325
    :cond_7
    const/16 v6, 0x8

    goto :goto_5

    .line 326
    :cond_8
    const/16 v2, 0x8

    goto :goto_6

    .line 327
    :cond_9
    const/16 v2, 0x8

    goto :goto_7

    .line 328
    :cond_a
    const/16 v2, 0x8

    goto :goto_8
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->clear()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 262
    if-eqz p1, :cond_0

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfile;

    .line 264
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment$PanicProfileAdapter;->add(Ljava/lang/Object;)V

    .line 265
    invoke-static {}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicProfilesFragment;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    return-void
.end method
