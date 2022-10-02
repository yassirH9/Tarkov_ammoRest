import { TestBed } from '@angular/core/testing';

import { TarkovDataServiceService } from './tarkov-data-service.service';

describe('TarkovDataServiceService', () => {
  let service: TarkovDataServiceService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TarkovDataServiceService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
