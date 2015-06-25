.class public Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

.field private c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 441
    iput p4, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->a:I

    .line 442
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    .line 443
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->a:I

    return v0
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;)Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->c:Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;

    .line 479
    const-string v1, "id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 480
    const-string v1, "url"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 481
    const-string v1, "title"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    new-instance v1, Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;-><init>()V

    iput-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    .line 485
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setId(I)V

    .line 486
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    const-string v5, "type"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setType(I)V

    .line 487
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setUrl(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v1, v4}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setTitle(Ljava/lang/String;)V

    .line 489
    const-string v1, "date"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 491
    :try_start_0
    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 492
    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v6, v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v5, "img"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 501
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v5, v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 503
    iget v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->a:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    iget v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->a:I

    if-ne v5, v8, :cond_1

    .line 504
    :cond_0
    iget-object v5, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    :cond_1
    iget-object v5, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->a:Landroid/widget/CheckBox;

    invoke-static {}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment;->a()Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 512
    iget-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->e:Landroid/widget/ImageButton;

    new-instance v5, Lde/gdata/mobilesecurity/activities/browser/s;

    invoke-direct {v5, p0, v2, v3, v4}, Lde/gdata/mobilesecurity/activities/browser/s;-><init>(Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    iput-object v1, v0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->f:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    .line 523
    return-void

    .line 493
    :catch_0
    move-exception v1

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parsing date ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/text/ParseException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 496
    iget-object v5, p0, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter;->b:Lde/gdata/mobilesecurity/activities/browser/UrlBean;

    invoke-virtual {v5, v1}, Lde/gdata/mobilesecurity/activities/browser/UrlBean;->setDate(Ljava/util/Date;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 456
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 457
    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 459
    new-instance v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;-><init>()V

    .line 460
    const v0, 0x7f0b0151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->a:Landroid/widget/CheckBox;

    .line 461
    const v0, 0x7f0b0152

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    .line 462
    const v0, 0x7f0b0153

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->c:Landroid/widget/TextView;

    .line 463
    const v0, 0x7f0b0154

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->d:Landroid/widget/TextView;

    .line 464
    const v0, 0x7f0b0155

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v2, Lde/gdata/mobilesecurity/activities/browser/BrowserUrlListFragment$BrowserUrlCursorAdapter$ViewHolder;->e:Landroid/widget/ImageButton;

    .line 466
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 468
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 470
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 472
    return-object v1
.end method
