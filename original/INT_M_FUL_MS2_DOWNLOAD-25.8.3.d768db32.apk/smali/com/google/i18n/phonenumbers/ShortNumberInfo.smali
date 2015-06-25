.class public Lcom/google/i18n/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    invoke-static {}, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/google/i18n/phonenumbers/internal/MatcherApi;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->b:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    .line 55
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/internal/MatcherApi;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    .line 88
    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->e:Ljava/util/Map;

    .line 90
    return-void
.end method

.method private static a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 573
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 574
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 416
    :goto_0
    return-object v0

    .line 404
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 405
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_1
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 410
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 416
    goto :goto_0
.end method

.method private a(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 584
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v1, p1, p2}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 517
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 533
    :cond_0
    :goto_0
    return v0

    .line 524
    :cond_1
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 525
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 531
    if-eqz p3, :cond_2

    sget-object v3, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->c:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 533
    :cond_2
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesNationalNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/i18n/phonenumbers/ShortNumberInfo;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->b:Lcom/google/i18n/phonenumbers/ShortNumberInfo;

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/google/i18n/phonenumbers/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExpectedCost(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 7

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(I)Ljava/util/List;

    move-result-object v1

    .line 367
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 368
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 394
    :cond_0
    :goto_0
    return-object v1

    .line 370
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 371
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v1

    goto :goto_0

    .line 373
    :cond_2
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 374
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v0

    .line 376
    sget-object v3, Lcom/google/i18n/phonenumbers/p;->a:[I

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 391
    sget-object v3, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1e

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unrecognised cost for region: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 393
    goto :goto_1

    .line 378
    :pswitch_0
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 380
    :pswitch_1
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-object v0, v1

    .line 381
    goto :goto_2

    .line 383
    :pswitch_2
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    if-eq v1, v0, :cond_3

    .line 384
    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-object v0, v1

    goto :goto_2

    :pswitch_3
    move-object v0, v1

    .line 389
    goto :goto_2

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getExpectedCostForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 3

    .prologue
    .line 318
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 320
    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 341
    :goto_0
    return-object v0

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 341
    :cond_4
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0
.end method

.method public getExpectedCostForRegion(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 271
    if-nez v0, :cond_0

    .line 272
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 290
    :goto_0
    return-object v0

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 284
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 286
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0

    .line 290
    :cond_4
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_0
.end method

.method public isCarrierSpecific(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(I)Ljava/util/List;

    move-result-object v0

    .line 549
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPossibleShortNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(I)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 159
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPossibleShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 136
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 138
    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    goto :goto_0
.end method

.method public isPossibleShortNumberForRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->d:Lcom/google/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/google/i18n/phonenumbers/internal/MatcherApi;->matchesPossibleNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    goto :goto_0
.end method

.method public isValidShortNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 229
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(I)Ljava/util/List;

    move-result-object v1

    .line 230
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    if-eqz v2, :cond_0

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isValidShortNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 207
    if-nez v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 212
    invoke-direct {p0, v2, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 216
    invoke-direct {p0, v2, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    goto :goto_0
.end method

.method public isValidShortNumberForRegion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/a;->a(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 184
    if-nez v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 188
    invoke-direct {p0, p1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/ShortNumberInfo;->a(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    goto :goto_0
.end method
