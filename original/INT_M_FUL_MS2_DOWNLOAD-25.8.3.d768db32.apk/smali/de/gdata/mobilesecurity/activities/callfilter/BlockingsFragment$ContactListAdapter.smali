.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 346
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    .line 347
    const v0, 0x1090004

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 348
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->b:Landroid/view/LayoutInflater;

    .line 349
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const v7, 0x7f0b015a

    const v3, 0x7f0b015e

    const/4 v6, 0x0

    .line 367
    if-nez p2, :cond_0

    .line 368
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030041

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    .line 375
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 385
    :goto_0
    const v1, 0x7f0b015c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const v1, 0x7f0b015d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v4, v5, v8, v8, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getDateTime(JIILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 392
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 393
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->d()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 396
    const v1, 0x7f0b015b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 398
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->e()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->e()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    iget v0, v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->loadImages(I)V

    .line 405
    :cond_1
    return-object p2

    .line 382
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 401
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->a:Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->clear()V

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    .line 355
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method
